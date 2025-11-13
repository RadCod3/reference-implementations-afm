import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

# Ballerina class mapping for the Java `com.networknt.schema.ValidationMessage` class.
@java:Binding {'class: "com.networknt.schema.ValidationMessage"}
public isolated distinct class ValidationMessage {

    *java:JObject;
    *Object;

    # The `handle` field that stores the reference to the `com.networknt.schema.ValidationMessage` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `com.networknt.schema.ValidationMessage` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.networknt.schema.ValidationMessage` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `equals` method of `com.networknt.schema.ValidationMessage`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(Object arg0) returns boolean {
        return com_networknt_schema_ValidationMessage_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getArguments` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `Object[]` value returning from the Java mapping.
    public function getArguments() returns Object[]|error {
        handle externalObj = com_networknt_schema_ValidationMessage_getArguments(self.jObj);
        Object[] newObj = [];
        handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
        int count = anyObj.length();
        foreach int i in 0 ... count - 1 {
            Object element = new (anyObj[i]);
            newObj[i] = element;
        }
        return newObj;
    }

    # The function that maps to the `getClass` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `Class` value returning from the Java mapping.
    public function getClass() returns Class {
        handle externalObj = com_networknt_schema_ValidationMessage_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCode` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getCode() returns string {
        return java:toString(com_networknt_schema_ValidationMessage_getCode(self.jObj)) ?: "";
    }

    # The function that maps to the `getDetails` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `Map` value returning from the Java mapping.
    public function getDetails() returns Map {
        handle externalObj = com_networknt_schema_ValidationMessage_getDetails(self.jObj);
        Map newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getError` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getError() returns string {
        return java:toString(com_networknt_schema_ValidationMessage_getError(self.jObj)) ?: "";
    }

    # The function that maps to the `getEvaluationPath` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `JsonNodePath` value returning from the Java mapping.
    public function getEvaluationPath() returns JsonNodePath {
        handle externalObj = com_networknt_schema_ValidationMessage_getEvaluationPath(self.jObj);
        JsonNodePath newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getInstanceLocation` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `JsonNodePath` value returning from the Java mapping.
    public function getInstanceLocation() returns JsonNodePath {
        handle externalObj = com_networknt_schema_ValidationMessage_getInstanceLocation(self.jObj);
        JsonNodePath newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getInstanceNode` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `JsonNode` value returning from the Java mapping.
    public function getInstanceNode() returns JsonNode {
        handle externalObj = com_networknt_schema_ValidationMessage_getInstanceNode(self.jObj);
        JsonNode newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getMessage` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getMessage() returns string {
        return java:toString(com_networknt_schema_ValidationMessage_getMessage(self.jObj)) ?: "";
    }

    # The function that maps to the `getMessageKey` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getMessageKey() returns string {
        return java:toString(com_networknt_schema_ValidationMessage_getMessageKey(self.jObj)) ?: "";
    }

    # The function that maps to the `getProperty` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getProperty() returns string {
        return java:toString(com_networknt_schema_ValidationMessage_getProperty(self.jObj)) ?: "";
    }

    # The function that maps to the `getSchemaLocation` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `SchemaLocation` value returning from the Java mapping.
    public function getSchemaLocation() returns SchemaLocation {
        handle externalObj = com_networknt_schema_ValidationMessage_getSchemaLocation(self.jObj);
        SchemaLocation newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchemaNode` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `JsonNode` value returning from the Java mapping.
    public function getSchemaNode() returns JsonNode {
        handle externalObj = com_networknt_schema_ValidationMessage_getSchemaNode(self.jObj);
        JsonNode newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getType` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getType() returns string {
        return java:toString(com_networknt_schema_ValidationMessage_getType(self.jObj)) ?: "";
    }

    # The function that maps to the `hashCode` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_networknt_schema_ValidationMessage_hashCode(self.jObj);
    }

    # The function that maps to the `isValid` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public function isValid() returns boolean {
        return com_networknt_schema_ValidationMessage_isValid(self.jObj);
    }

    # The function that maps to the `notify` method of `com.networknt.schema.ValidationMessage`.
    public function notify() {
        com_networknt_schema_ValidationMessage_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.networknt.schema.ValidationMessage`.
    public function notifyAll() {
        com_networknt_schema_ValidationMessage_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `com.networknt.schema.ValidationMessage`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function 'wait() returns InterruptedException? {
        error|() externalObj = com_networknt_schema_ValidationMessage_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.ValidationMessage`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_ValidationMessage_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.ValidationMessage`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_ValidationMessage_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `builder` method of `com.networknt.schema.ValidationMessage`.
#
# + return - The `Builder2` value returning from the Java mapping.
public function ValidationMessage_builder() returns Builder2 {
    handle externalObj = com_networknt_schema_ValidationMessage_builder();
    Builder2 newObj = new (externalObj);
    return newObj;
}

function com_networknt_schema_ValidationMessage_builder() returns handle = @java:Method {
    name: "builder",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: ["java.lang.Object"]
} external;

function com_networknt_schema_ValidationMessage_getArguments(handle receiver) returns handle = @java:Method {
    name: "getArguments",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getCode(handle receiver) returns handle = @java:Method {
    name: "getCode",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getDetails(handle receiver) returns handle = @java:Method {
    name: "getDetails",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getError(handle receiver) returns handle = @java:Method {
    name: "getError",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getEvaluationPath(handle receiver) returns handle = @java:Method {
    name: "getEvaluationPath",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getInstanceLocation(handle receiver) returns handle = @java:Method {
    name: "getInstanceLocation",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getInstanceNode(handle receiver) returns handle = @java:Method {
    name: "getInstanceNode",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getMessage(handle receiver) returns handle = @java:Method {
    name: "getMessage",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getMessageKey(handle receiver) returns handle = @java:Method {
    name: "getMessageKey",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getProperty(handle receiver) returns handle = @java:Method {
    name: "getProperty",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getSchemaLocation(handle receiver) returns handle = @java:Method {
    name: "getSchemaLocation",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getSchemaNode(handle receiver) returns handle = @java:Method {
    name: "getSchemaNode",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_getType(handle receiver) returns handle = @java:Method {
    name: "getType",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_isValid(handle receiver) returns boolean = @java:Method {
    name: "isValid",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: []
} external;

function com_networknt_schema_ValidationMessage_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: ["long"]
} external;

function com_networknt_schema_ValidationMessage_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.ValidationMessage",
    paramTypes: ["long", "int"]
} external;

