// Copyright (c) 2025, WSO2 LLC. (https://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied. See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/file;
import ballerina/http;
import ballerina/io;
import ballerina/lang.runtime;
import ballerina/log;
import ballerina/os;
import ballerina/test;
import ballerina/time;
import ballerina/websubhub;

// In-memory store for subscriptions
map<map<readonly & websubhub:VerifiedSubscription>> subscriptions = {};

// Mock HTTP service for LLM (webhook resource)
service /ballerina\-copilot/v2\.0 on new http:Listener(9192) {

    resource function post webhook/chat/completions(@http:Payload json payload) returns json|http:InternalServerError {
        // Extract the messages from the request
        json|error messages = payload.messages;
        if messages is error {
            return <http:InternalServerError>{
                body: {"error": "Invalid request format"}
            };
        }

        // Get the last user message
        json[] messageArray = <json[]>messages;
        string userMessage = "";
        foreach json msg in messageArray {
            map<json> msgMap = <map<json>>msg;
            json|error roleValue = msgMap.role;
            if roleValue is string && roleValue == "user" {
                json|error contentValue = msgMap.content;
                if contentValue is string {
                    userMessage = contentValue;
                }
            }
        }

        string mockResponse = getMockWebhookLLMResponse(userMessage);

        return {
            "id": "chatcmpl-webhook-mock-123",
            "object": "chat.completion",
            "created": 1234567890,
            "model": "test-model",
            "choices": [
                {
                    "index": 0,
                    "message": {
                        "role": "assistant",
                        "content": mockResponse
                    },
                    "finish_reason": "stop"
                }
            ],
            "usage": {
                "prompt_tokens": 10,
                "completion_tokens": 20,
                "total_tokens": 30
            }
        };
    }
}

// Counter for mock webhook LLM responses
int mockWebhookResponseCounter = 0;

// Capture the prompts received by the LLM
string[] capturedPrompts = [];

// Predefined mock LLM responses for webhook
final string[] & readonly mockWebhookResponses = [
    "Webhook event processed: Order #12345 has been created successfully.",
    "Webhook event processed: Payment confirmed for order #12345."
];

// Generate mock LLM responses by index
function getMockWebhookLLMResponse(string userMessage) returns string {
    // Capture the prompt
    capturedPrompts.push(userMessage);

    if mockWebhookResponseCounter < mockWebhookResponses.length() {
        string response = mockWebhookResponses[mockWebhookResponseCounter];
        mockWebhookResponseCounter += 1;
        return response;
    }
    // Fallback response
    return string `Webhook event processed: ${userMessage}`;
}

// In-memory WebSub Hub implementation
websubhub:Service hubService = service object {

    remote function onRegisterTopic(readonly & websubhub:TopicRegistration message)
                                returns websubhub:TopicRegistrationSuccess|websubhub:TopicRegistrationError {
        log:printInfo(string `Topic registration requested: ${message.topic}`);
        return websubhub:TOPIC_REGISTRATION_SUCCESS;
    }

    remote function onDeregisterTopic(readonly & websubhub:TopicDeregistration message)
                                returns websubhub:TopicDeregistrationSuccess|websubhub:TopicDeregistrationError {
        log:printInfo(string `Topic deregistration requested: ${message.topic}`);
        return websubhub:TOPIC_DEREGISTRATION_SUCCESS;
    }

    remote function onUpdateMessage(readonly & websubhub:UpdateMessage message)
                                returns websubhub:Acknowledgement|websubhub:UpdateMessageError {
        // Get all subscribers for this topic
        map<readonly & websubhub:VerifiedSubscription> topicSubscribers = subscriptions.hasKey(message.hubTopic)
            ? subscriptions.get(message.hubTopic).clone()
            : {};

        // Publish to all subscribers
        foreach var subscriber in topicSubscribers {
            error? result = publishToSubscriber(subscriber, message);
            if result is error {
                log:printError(string `Failed to publish to subscriber: ${subscriber.hubCallback}`, result);
            }
        }

        log:printInfo(string `Message published to topic: ${message.hubTopic}`);
        return websubhub:ACKNOWLEDGEMENT;
    }

    remote function onSubscriptionValidation(readonly & websubhub:Subscription message)
                                returns websubhub:SubscriptionDeniedError? {
        // Check if already subscribed
        if subscriptions.hasKey(message.hubTopic) {
            map<readonly & websubhub:VerifiedSubscription> topicSubs = subscriptions.get(message.hubTopic);
            if topicSubs.hasKey(message.hubCallback) {
                return websubhub:SUBSCRIPTION_DENIED_ERROR;
            }
        }
    }

    remote function onSubscriptionIntentVerified(readonly & websubhub:VerifiedSubscription message) returns error? {
        if !subscriptions.hasKey(message.hubTopic) {
            subscriptions[message.hubTopic] = {};
        }
        map<readonly & websubhub:VerifiedSubscription> topicSubs = subscriptions.get(message.hubTopic);
        topicSubs[message.hubCallback] = message;
        log:printInfo(string `Subscription verified: ${message.hubCallback} for topic ${message.hubTopic}`);
    }

    remote function onUnsubscriptionValidation(readonly & websubhub:Unsubscription message)
                                returns websubhub:UnsubscriptionDeniedError? {
        if !subscriptions.hasKey(message.hubTopic) {
            return websubhub:UNSUBSCRIPTION_DENIED_ERROR;
        }

        map<readonly & websubhub:VerifiedSubscription> topicSubs = subscriptions.get(message.hubTopic);
        if !topicSubs.hasKey(message.hubCallback) {
            return websubhub:UNSUBSCRIPTION_DENIED_ERROR;
        }
    }

    remote function onUnsubscriptionIntentVerified(readonly & websubhub:VerifiedUnsubscription message) returns error? {
        if subscriptions.hasKey(message.hubTopic) {
            map<readonly & websubhub:VerifiedSubscription> topicSubs = subscriptions.get(message.hubTopic);
            _ = topicSubs.remove(message.hubCallback);
        }
        log:printInfo(string `Unsubscription verified: ${message.hubCallback} from topic ${message.hubTopic}`);
    }
};

// Helper function to publish message to a subscriber
function publishToSubscriber(readonly & websubhub:VerifiedSubscription subscriber,
                            readonly & websubhub:UpdateMessage message) returns error? {
    http:Client subscriberClient = check new (subscriber.hubCallback);
    http:Response response = check subscriberClient->post("", message.content.toJson());
    if response.statusCode != 200 && response.statusCode != 202 {
        return error(string `Subscriber returned non-success status: ${response.statusCode}`);
    }
}

@test:Config
function testWebhookEndToEnd() returns error? {
    check os:setEnv("WH_HOST", "http://localhost:8085");

    // Reset counters and state
    mockWebhookResponseCounter = 0;
    capturedPrompts = [];
    subscriptions = {};

    // Start the in-memory WebSub hub on port 9193
    websubhub:Listener hubListener = check new (9193);
    check hubListener.attach(hubService, "/websub/hub");
    check hubListener.'start();

    // Start the AFM webhook agent (this will subscribe to the hub)
    // Run in background to not block the test
    future<error?> _ = start main("tests/sample_webhook_agent.afm.md");

    // Wait for the agent to start and subscribe
    runtime:sleep(3);

    // Verify subscription was created
    string topicUrl = "http://localhost:9193/events/orders";
    test:assertTrue(subscriptions.hasKey(topicUrl), "Subscription should exist for topic");

    // Create publisher client to publish messages to the hub
    websubhub:PublisherClient publisher = check new ("http://localhost:9193/websub/hub");

    // Publish first message: order created
    _ = check publisher->publishUpdate(topicUrl,
        {
            event: "order.created",
            orderId: "12345",
            amount: 99.99,
            customer: "john@example.com"
        });
    log:printInfo("Published order.created event");
    runtime:sleep(1);

    // Publish second message: payment confirmed
    _ = check publisher->publishUpdate(topicUrl,
        {
            event: "payment.confirmed",
            orderId: "12345",
            amount: 99.99
        });
    log:printInfo("Published payment.confirmed event");
    runtime:sleep(1);

    // Verify that both messages were processed (2 LLM calls made)
    test:assertEquals(mockWebhookResponseCounter, 2,
        "Both webhook events should have been processed");

    // Verify the prompts were correctly evaluated from the template
    test:assertEquals(capturedPrompts.length(), 2, "Should have captured 2 prompts");

    // Verify exact prompt content after template evaluation
    string expectedPrompt1 = "\"[order.created] Process the following order event: {\\\"event\\\":\\\"order.created\\\", \\\"orderId\\\":\\\"12345\\\", \\\"amount\\\":99.99, \\\"customer\\\":\\\"john@example.com\\\"}\"";
    string expectedPrompt2 = "\"[payment.confirmed] Process the following order event: {\\\"event\\\":\\\"payment.confirmed\\\", \\\"orderId\\\":\\\"12345\\\", \\\"amount\\\":99.99}\"";

    test:assertEquals(capturedPrompts[0], expectedPrompt1,
        "First prompt should match expected template evaluation");
    test:assertEquals(capturedPrompts[1], expectedPrompt2,
        "Second prompt should match expected template evaluation");

    error? stopResult = hubListener.gracefulStop();
    test:assertTrue(stopResult is (), "Hub listener should stop gracefully");
    check os:unsetEnv("WH_HOST");
}

// Delay used by the slow mock LLM to simulate a long-running agent invocation.
const decimal SLOW_MOCK_LLM_DELAY = 5;

// Polls the hub's subscription map until the expected subscription appears,
// to avoid timing-sensitive fixed sleeps while waiting for an AFM agent to
// complete its WebSub subscription.
function waitForSubscription(string topicUrl, decimal timeoutSeconds = 15) returns error? {
    decimal deadline = time:monotonicNow() + timeoutSeconds;
    while time:monotonicNow() < deadline {
        if subscriptions.hasKey(topicUrl) {
            return;
        }
        runtime:sleep(0.1);
    }
    return error(string `Timed out after ${timeoutSeconds}s waiting for subscription to ${topicUrl}`);
}

// Number of times the slow mock LLM endpoint has been invoked. Used by the
// test to assert that the background agent execution actually reached the LLM.
isolated int slowMockCallCount = 0;

// Mock HTTP service for LLM that sleeps before responding, used to verify
// that the webhook subscriber acknowledges before the agent completes.
service /slow\-llm/v1\.0 on new http:Listener(29194) {

    resource function post webhook/chat/completions(@http:Payload json _payload) returns json {
        lock {
            slowMockCallCount += 1;
        }
        runtime:sleep(SLOW_MOCK_LLM_DELAY);
        return {
            "id": "chatcmpl-slow-mock",
            "object": "chat.completion",
            "created": 1234567890,
            "model": "test-model",
            "choices": [
                {
                    "index": 0,
                    "message": {
                        "role": "assistant",
                        "content": "Slowly processed."
                    },
                    "finish_reason": "stop"
                }
            ],
            "usage": {
                "prompt_tokens": 10,
                "completion_tokens": 20,
                "total_tokens": 30
            }
        };
    }
}

// Verifies that the WebSub subscriber returns an acknowledgement before the
// agent execution completes, as required by the WebSub spec.
// Uses a slow mock LLM so the agent run takes ~SLOW_MOCK_LLM_DELAY seconds;
// the publisher should receive a success response well before that delay elapses.
@test:Config
function testWebhookAcknowledgesBeforeAgentCompletes() returns error? {
    lock {
        slowMockCallCount = 0;
    }
    check os:setEnv("WH_SLOW_HOST", "http://localhost:28086");

    // Start an independent WebSub hub on a dedicated port to avoid
    // interfering with the other webhook test's hub.
    websubhub:Listener hubListener = check new (29195);
    check hubListener.attach(hubService, "/websub/hub");
    check hubListener.'start();

    // Call runAgentFromAFM directly so the port doesn't collide with the other
    // test's main() which uses the module-level configurable port (8085).
    string afmPath = "tests/sample_webhook_agent_slow.afm.md";
    string afmContent = check io:fileReadString(afmPath);
    AFMRecord afm = check parseAfm(afmContent);
    string afmFileDir = check file:parentPath(check file:getAbsolutePath(afmPath));
    future<error?> _ = start runAgentFromAFM(afm, 28086, afmFileDir);

    string topicUrl = "http://localhost:29195/events/slow-orders";
    check waitForSubscription(topicUrl);

    websubhub:PublisherClient publisher = check new ("http://localhost:29195/websub/hub");

    decimal before = time:monotonicNow();
    _ = check publisher->publishUpdate(topicUrl, <map<json>> {event: "slow.test", orderId: "1"});
    decimal elapsed = time:monotonicNow() - before;

    // The subscriber must acknowledge the content distribution request before
    // the agent completes. The slow mock LLM sleeps for SLOW_MOCK_LLM_DELAY
    // seconds, so if acknowledgement is synchronous the publish call will take
    // at least that long.
    test:assertTrue(elapsed < 2d,
        string `publishUpdate returned in ${elapsed}s; expected fast ack ` +
        string `(< 2s) while agent runs for ~${SLOW_MOCK_LLM_DELAY}s in the background`);

    // Allow the background agent run to complete before the hub listener shuts
    // down so we don't leave dangling HTTP work.
    runtime:sleep(SLOW_MOCK_LLM_DELAY + 1d);

    lock {
        test:assertEquals(slowMockCallCount, 1,
            "Slow mock LLM should have been invoked exactly once by the background agent run");
    }
    error? stopResult = hubListener.gracefulStop();
    test:assertTrue(stopResult is (), "Hub listener should stop gracefully");
    check os:unsetEnv("WH_SLOW_HOST");
}
