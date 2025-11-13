import ballerina/jballerina.java;

# Ballerina class mapping for the Java `com.networknt.schema.JsonSchemaFactory` class.
@java:Binding {'class: "com.networknt.schema.JsonSchemaFactory"}
public isolated distinct class JsonSchemaFactory {

    *java:JObject;
    *Object;

    # The `handle` field that stores the reference to the `com.networknt.schema.JsonSchemaFactory` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `com.networknt.schema.JsonSchemaFactory` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.networknt.schema.JsonSchemaFactory` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `create` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `ValidationContext` value required to map with the Java method parameter.
    # + arg1 - The `SchemaLocation` value required to map with the Java method parameter.
    # + arg2 - The `JsonNodePath` value required to map with the Java method parameter.
    # + arg3 - The `JsonNode` value required to map with the Java method parameter.
    # + arg4 - The `JsonSchema` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function create(ValidationContext arg0, SchemaLocation arg1, JsonNodePath arg2, JsonNode arg3, JsonSchema arg4) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_create(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj, arg3.jObj, arg4.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `equals` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(Object arg0) returns boolean {
        return com_networknt_schema_JsonSchemaFactory_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + return - The `Class` value returning from the Java mapping.
    public function getClass() returns Class {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getMetaSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `SchemaValidatorsConfig` value required to map with the Java method parameter.
    # + return - The `JsonMetaSchema` value returning from the Java mapping.
    public function getMetaSchema(string arg0, SchemaValidatorsConfig arg1) returns JsonMetaSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getMetaSchema(self.jObj, java:fromString(arg0), arg1.jObj);
        JsonMetaSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `InputStream` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema(InputStream arg0) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema(self.jObj, arg0.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public isolated function getSchema10(string arg0) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema10(self.jObj, java:fromString(arg0));
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `InputFormat` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema11(string arg0, InputFormat arg1) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema11(self.jObj, java:fromString(arg0), arg1.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `InputFormat` value required to map with the Java method parameter.
    # + arg2 - The `SchemaValidatorsConfig` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema12(string arg0, InputFormat arg1, SchemaValidatorsConfig arg2) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema12(self.jObj, java:fromString(arg0), arg1.jObj, arg2.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `SchemaValidatorsConfig` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema13(string arg0, SchemaValidatorsConfig arg1) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema13(self.jObj, java:fromString(arg0), arg1.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `URI` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema14(URI arg0) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema14(self.jObj, arg0.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `URI` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema15(URI arg0, JsonNode arg1) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema15(self.jObj, arg0.jObj, arg1.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `URI` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `SchemaValidatorsConfig` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema16(URI arg0, JsonNode arg1, SchemaValidatorsConfig arg2) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema16(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `InputStream` value required to map with the Java method parameter.
    # + arg1 - The `InputFormat` value required to map with the Java method parameter.
    # + arg2 - The `SchemaValidatorsConfig` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema2(InputStream arg0, InputFormat arg1, SchemaValidatorsConfig arg2) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema2(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `InputStream` value required to map with the Java method parameter.
    # + arg1 - The `SchemaValidatorsConfig` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema3(InputStream arg0, SchemaValidatorsConfig arg1) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema3(self.jObj, arg0.jObj, arg1.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `JsonNode` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema4(JsonNode arg0) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema4(self.jObj, arg0.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `JsonNode` value required to map with the Java method parameter.
    # + arg1 - The `SchemaValidatorsConfig` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema5(JsonNode arg0, SchemaValidatorsConfig arg1) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema5(self.jObj, arg0.jObj, arg1.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `SchemaLocation` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema6(SchemaLocation arg0) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema6(self.jObj, arg0.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `SchemaLocation` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema7(SchemaLocation arg0, JsonNode arg1) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema7(self.jObj, arg0.jObj, arg1.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `SchemaLocation` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `SchemaValidatorsConfig` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema8(SchemaLocation arg0, JsonNode arg1, SchemaValidatorsConfig arg2) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema8(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchema` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `SchemaLocation` value required to map with the Java method parameter.
    # + arg1 - The `SchemaValidatorsConfig` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSchema9(SchemaLocation arg0, SchemaValidatorsConfig arg1) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchema9(self.jObj, arg0.jObj, arg1.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchemaLoader` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + return - The `SchemaLoader` value returning from the Java mapping.
    public function getSchemaLoader() returns SchemaLoader {
        handle externalObj = com_networknt_schema_JsonSchemaFactory_getSchemaLoader(self.jObj);
        SchemaLoader newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_networknt_schema_JsonSchemaFactory_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `com.networknt.schema.JsonSchemaFactory`.
    public function notify() {
        com_networknt_schema_JsonSchemaFactory_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.networknt.schema.JsonSchemaFactory`.
    public function notifyAll() {
        com_networknt_schema_JsonSchemaFactory_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function 'wait() returns InterruptedException? {
        error|() externalObj = com_networknt_schema_JsonSchemaFactory_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_JsonSchemaFactory_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.JsonSchemaFactory`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_JsonSchemaFactory_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `builder` method of `com.networknt.schema.JsonSchemaFactory`.
#
# + return - The `Builder` value returning from the Java mapping.
public function JsonSchemaFactory_builder() returns Builder {
    handle externalObj = com_networknt_schema_JsonSchemaFactory_builder();
    Builder newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `builder` method of `com.networknt.schema.JsonSchemaFactory`.
#
# + arg0 - The `JsonSchemaFactory` value required to map with the Java method parameter.
# + return - The `Builder` value returning from the Java mapping.
public function JsonSchemaFactory_builder2(JsonSchemaFactory arg0) returns Builder {
    handle externalObj = com_networknt_schema_JsonSchemaFactory_builder2(arg0.jObj);
    Builder newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `checkVersion` method of `com.networknt.schema.JsonSchemaFactory`.
#
# + arg0 - The `VersionFlag` value required to map with the Java method parameter.
# + return - The `JsonSchemaVersion` value returning from the Java mapping.
public function JsonSchemaFactory_checkVersion(VersionFlag arg0) returns JsonSchemaVersion {
    handle externalObj = com_networknt_schema_JsonSchemaFactory_checkVersion(arg0.jObj);
    JsonSchemaVersion newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `getInstance` method of `com.networknt.schema.JsonSchemaFactory`.
#
# + arg0 - The `VersionFlag` value required to map with the Java method parameter.
# + return - The `JsonSchemaFactory` value returning from the Java mapping.
public isolated function JsonSchemaFactory_getInstance(VersionFlag arg0) returns JsonSchemaFactory {
    handle externalObj = com_networknt_schema_JsonSchemaFactory_getInstance(arg0.jObj);
    JsonSchemaFactory newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `getInstance` method of `com.networknt.schema.JsonSchemaFactory`.
#
# + arg0 - The `VersionFlag` value required to map with the Java method parameter.
# + arg1 - The `Consumer` value required to map with the Java method parameter.
# + return - The `JsonSchemaFactory` value returning from the Java mapping.
public function JsonSchemaFactory_getInstance2(VersionFlag arg0, Consumer arg1) returns JsonSchemaFactory {
    handle externalObj = com_networknt_schema_JsonSchemaFactory_getInstance2(arg0.jObj, arg1.jObj);
    JsonSchemaFactory newObj = new (externalObj);
    return newObj;
}

function com_networknt_schema_JsonSchemaFactory_builder() returns handle = @java:Method {
    name: "builder",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchemaFactory_builder2(handle arg0) returns handle = @java:Method {
    name: "builder",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["com.networknt.schema.JsonSchemaFactory"]
} external;

function com_networknt_schema_JsonSchemaFactory_checkVersion(handle arg0) returns handle = @java:Method {
    name: "checkVersion",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["com.networknt.schema.SpecVersion$VersionFlag"]
} external;

function com_networknt_schema_JsonSchemaFactory_create(handle receiver, handle arg0, handle arg1, handle arg2, handle arg3, handle arg4) returns handle = @java:Method {
    name: "create",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["com.networknt.schema.ValidationContext", "com.networknt.schema.SchemaLocation", "com.networknt.schema.JsonNodePath", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.JsonSchema"]
} external;

function com_networknt_schema_JsonSchemaFactory_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["java.lang.Object"]
} external;

function com_networknt_schema_JsonSchemaFactory_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: []
} external;

isolated function com_networknt_schema_JsonSchemaFactory_getInstance(handle arg0) returns handle = @java:Method {
    name: "getInstance",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["com.networknt.schema.SpecVersion$VersionFlag"]
} external;

function com_networknt_schema_JsonSchemaFactory_getInstance2(handle arg0, handle arg1) returns handle = @java:Method {
    name: "getInstance",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["com.networknt.schema.SpecVersion$VersionFlag", "java.util.function.Consumer"]
} external;

function com_networknt_schema_JsonSchemaFactory_getMetaSchema(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "getMetaSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["java.lang.String", "com.networknt.schema.SchemaValidatorsConfig"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["java.io.InputStream"]
} external;

isolated function com_networknt_schema_JsonSchemaFactory_getSchema10(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["java.lang.String"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema11(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["java.lang.String", "com.networknt.schema.InputFormat"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema12(handle receiver, handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["java.lang.String", "com.networknt.schema.InputFormat", "com.networknt.schema.SchemaValidatorsConfig"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema13(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["java.lang.String", "com.networknt.schema.SchemaValidatorsConfig"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema14(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["java.net.URI"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema15(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["java.net.URI", "com.fasterxml.jackson.databind.JsonNode"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema16(handle receiver, handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["java.net.URI", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.SchemaValidatorsConfig"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema2(handle receiver, handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["java.io.InputStream", "com.networknt.schema.InputFormat", "com.networknt.schema.SchemaValidatorsConfig"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema3(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["java.io.InputStream", "com.networknt.schema.SchemaValidatorsConfig"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema4(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["com.fasterxml.jackson.databind.JsonNode"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema5(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.SchemaValidatorsConfig"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema6(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["com.networknt.schema.SchemaLocation"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema7(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["com.networknt.schema.SchemaLocation", "com.fasterxml.jackson.databind.JsonNode"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema8(handle receiver, handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["com.networknt.schema.SchemaLocation", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.SchemaValidatorsConfig"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchema9(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "getSchema",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["com.networknt.schema.SchemaLocation", "com.networknt.schema.SchemaValidatorsConfig"]
} external;

function com_networknt_schema_JsonSchemaFactory_getSchemaLoader(handle receiver) returns handle = @java:Method {
    name: "getSchemaLoader",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchemaFactory_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchemaFactory_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchemaFactory_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchemaFactory_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchemaFactory_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["long"]
} external;

function com_networknt_schema_JsonSchemaFactory_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.JsonSchemaFactory",
    paramTypes: ["long", "int"]
} external;

