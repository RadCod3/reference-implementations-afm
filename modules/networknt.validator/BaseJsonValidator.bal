import ballerina/jballerina.java;

# Ballerina class mapping for the Java `com.networknt.schema.BaseJsonValidator` class.
@java:Binding {'class: "com.networknt.schema.BaseJsonValidator"}
public isolated distinct class BaseJsonValidator {

    *java:JObject;
    *ValidationMessageHandler;

    # The `handle` field that stores the reference to the `com.networknt.schema.BaseJsonValidator` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `com.networknt.schema.BaseJsonValidator` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.networknt.schema.BaseJsonValidator` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `equals` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(Object arg0) returns boolean {
        return com_networknt_schema_BaseJsonValidator_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + return - The `Class` value returning from the Java mapping.
    public function getClass() returns Class {
        handle externalObj = com_networknt_schema_BaseJsonValidator_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getEvaluationParentSchema` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getEvaluationParentSchema() returns JsonSchema {
        handle externalObj = com_networknt_schema_BaseJsonValidator_getEvaluationParentSchema(self.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getEvaluationPath` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + return - The `JsonNodePath` value returning from the Java mapping.
    public function getEvaluationPath() returns JsonNodePath {
        handle externalObj = com_networknt_schema_BaseJsonValidator_getEvaluationPath(self.jObj);
        JsonNodePath newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getKeyword` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getKeyword() returns string {
        return java:toString(com_networknt_schema_BaseJsonValidator_getKeyword(self.jObj)) ?: "";
    }

    # The function that maps to the `getParentSchema` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getParentSchema() returns JsonSchema {
        handle externalObj = com_networknt_schema_BaseJsonValidator_getParentSchema(self.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchemaLocation` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + return - The `SchemaLocation` value returning from the Java mapping.
    public function getSchemaLocation() returns SchemaLocation {
        handle externalObj = com_networknt_schema_BaseJsonValidator_getSchemaLocation(self.jObj);
        SchemaLocation newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchemaNode` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + return - The `JsonNode` value returning from the Java mapping.
    public function getSchemaNode() returns JsonNode {
        handle externalObj = com_networknt_schema_BaseJsonValidator_getSchemaNode(self.jObj);
        JsonNode newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_networknt_schema_BaseJsonValidator_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `com.networknt.schema.BaseJsonValidator`.
    public function notify() {
        com_networknt_schema_BaseJsonValidator_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.networknt.schema.BaseJsonValidator`.
    public function notifyAll() {
        com_networknt_schema_BaseJsonValidator_notifyAll(self.jObj);
    }

    # The function that maps to the `preloadJsonSchema` method of `com.networknt.schema.BaseJsonValidator`.
    public function preloadJsonSchema() {
        com_networknt_schema_BaseJsonValidator_preloadJsonSchema(self.jObj);
    }

    # The function that maps to the `validate` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + return - The `Set` value returning from the Java mapping.
    public function validate(ExecutionContext arg0, JsonNode arg1) returns Set {
        handle externalObj = com_networknt_schema_BaseJsonValidator_validate(self.jObj, arg0.jObj, arg1.jObj);
        Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `JsonNode` value required to map with the Java method parameter.
    # + arg3 - The `JsonNodePath` value required to map with the Java method parameter.
    # + return - The `Set` value returning from the Java mapping.
    public function validate2(ExecutionContext arg0, JsonNode arg1, JsonNode arg2, JsonNodePath arg3) returns Set {
        handle externalObj = com_networknt_schema_BaseJsonValidator_validate2(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj, arg3.jObj);
        Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `wait` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function 'wait() returns InterruptedException? {
        error|() externalObj = com_networknt_schema_BaseJsonValidator_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_BaseJsonValidator_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_BaseJsonValidator_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `walk` method of `com.networknt.schema.BaseJsonValidator`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `JsonNode` value required to map with the Java method parameter.
    # + arg3 - The `JsonNodePath` value required to map with the Java method parameter.
    # + arg4 - The `boolean` value required to map with the Java method parameter.
    # + return - The `Set` value returning from the Java mapping.
    public function walk(ExecutionContext arg0, JsonNode arg1, JsonNode arg2, JsonNodePath arg3, boolean arg4) returns Set {
        handle externalObj = com_networknt_schema_BaseJsonValidator_walk(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj, arg3.jObj, arg4);
        Set newObj = new (externalObj);
        return newObj;
    }

}

# The function that maps to the `debug` method of `com.networknt.schema.BaseJsonValidator`.
#
# + arg0 - The `Logger` value required to map with the Java method parameter.
# + arg1 - The `ExecutionContext` value required to map with the Java method parameter.
# + arg2 - The `JsonNode` value required to map with the Java method parameter.
# + arg3 - The `JsonNode` value required to map with the Java method parameter.
# + arg4 - The `JsonNodePath` value required to map with the Java method parameter.
public function BaseJsonValidator_debug(Logger arg0, ExecutionContext arg1, JsonNode arg2, JsonNode arg3, JsonNodePath arg4) {
    com_networknt_schema_BaseJsonValidator_debug(arg0.jObj, arg1.jObj, arg2.jObj, arg3.jObj, arg4.jObj);
}

function com_networknt_schema_BaseJsonValidator_debug(handle arg0, handle arg1, handle arg2, handle arg3, handle arg4) = @java:Method {
    name: "debug",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: ["org.slf4j.Logger", "com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.JsonNodePath"]
} external;

function com_networknt_schema_BaseJsonValidator_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: ["java.lang.Object"]
} external;

function com_networknt_schema_BaseJsonValidator_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: []
} external;

function com_networknt_schema_BaseJsonValidator_getEvaluationParentSchema(handle receiver) returns handle = @java:Method {
    name: "getEvaluationParentSchema",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: []
} external;

function com_networknt_schema_BaseJsonValidator_getEvaluationPath(handle receiver) returns handle = @java:Method {
    name: "getEvaluationPath",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: []
} external;

function com_networknt_schema_BaseJsonValidator_getKeyword(handle receiver) returns handle = @java:Method {
    name: "getKeyword",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: []
} external;

function com_networknt_schema_BaseJsonValidator_getParentSchema(handle receiver) returns handle = @java:Method {
    name: "getParentSchema",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: []
} external;

function com_networknt_schema_BaseJsonValidator_getSchemaLocation(handle receiver) returns handle = @java:Method {
    name: "getSchemaLocation",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: []
} external;

function com_networknt_schema_BaseJsonValidator_getSchemaNode(handle receiver) returns handle = @java:Method {
    name: "getSchemaNode",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: []
} external;

function com_networknt_schema_BaseJsonValidator_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: []
} external;

function com_networknt_schema_BaseJsonValidator_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: []
} external;

function com_networknt_schema_BaseJsonValidator_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: []
} external;

function com_networknt_schema_BaseJsonValidator_preloadJsonSchema(handle receiver) = @java:Method {
    name: "preloadJsonSchema",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: []
} external;

function com_networknt_schema_BaseJsonValidator_validate(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode"]
} external;

function com_networknt_schema_BaseJsonValidator_validate2(handle receiver, handle arg0, handle arg1, handle arg2, handle arg3) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.JsonNodePath"]
} external;

function com_networknt_schema_BaseJsonValidator_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: []
} external;

function com_networknt_schema_BaseJsonValidator_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: ["long"]
} external;

function com_networknt_schema_BaseJsonValidator_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: ["long", "int"]
} external;

function com_networknt_schema_BaseJsonValidator_walk(handle receiver, handle arg0, handle arg1, handle arg2, handle arg3, boolean arg4) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.BaseJsonValidator",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.JsonNodePath", "boolean"]
} external;

