---
spec_version: '0.3.0'
name: "WebhookSlowTestAgent"
description: "A test agent for verifying the webhook fast-ack behavior with a slow LLM."
author: "Copilot"
version: "0.1.0"
interfaces:
  - type: webhook
    prompt: "Process: ${http:payload}"
    subscription:
      protocol: "websub"
      hub: "http://localhost:29195/websub/hub"
      topic: "http://localhost:29195/events/slow-orders"
      callback: "${env:WH_SLOW_HOST}/webhook"
max_iterations: 1
model:
  provider: "wso2"
  url: "http://localhost:29194/slow-llm/v1.0/webhook"
  authentication:
    type: "bearer"
    token: "mock-token"
---

# Role
You are a slow order processing assistant used to verify fast acknowledgement behavior.

# Instructions
- Process incoming order events.
