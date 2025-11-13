import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

# Ballerina class mapping for the Java `org.everit.json.schema.ValidationException` class.
@java:Binding {'class: "org.everit.json.schema.ValidationException"}
isolated distinct class JValidationException {

    *java:JObject;
    *JRuntimeException;

    # The `handle` field that stores the reference to the `org.everit.json.schema.ValidationException` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `org.everit.json.schema.ValidationException` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.everit.json.schema.ValidationException` Java class.
    #
    # + return - The `string` form of the Java object instance.
    isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `addSuppressed` method of `org.everit.json.schema.ValidationException`.
    #
    # + arg0 - The `Throwable` value required to map with the Java method parameter.
    function addSuppressed(Throwable arg0) {
        org_everit_json_schema_ValidationException_addSuppressed(self.jObj, arg0.jObj);
    }

    # The function that maps to the `equals` method of `org.everit.json.schema.ValidationException`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function 'equals(Object arg0) returns boolean {
        return org_everit_json_schema_ValidationException_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `fillInStackTrace` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `Throwable` value returning from the Java mapping.
    function fillInStackTrace() returns Throwable {
        handle externalObj = org_everit_json_schema_ValidationException_fillInStackTrace(self.jObj);
        Throwable newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getAllMessages` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `List` value returning from the Java mapping.
    function getAllMessages() returns List {
        handle externalObj = org_everit_json_schema_ValidationException_getAllMessages(self.jObj);
        List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCause` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `Throwable` value returning from the Java mapping.
    function getCause() returns Throwable {
        handle externalObj = org_everit_json_schema_ValidationException_getCause(self.jObj);
        Throwable newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCausingExceptions` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `List` value returning from the Java mapping.
    function getCausingExceptions() returns List {
        handle externalObj = org_everit_json_schema_ValidationException_getCausingExceptions(self.jObj);
        List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getClass` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `Class` value returning from the Java mapping.
    function getClass() returns Class {
        handle externalObj = org_everit_json_schema_ValidationException_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getErrorMessage` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `string` value returning from the Java mapping.
    function getErrorMessage() returns string {
        return java:toString(org_everit_json_schema_ValidationException_getErrorMessage(self.jObj)) ?: "";
    }

    # The function that maps to the `getKeyword` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `string` value returning from the Java mapping.
    function getKeyword() returns string {
        return java:toString(org_everit_json_schema_ValidationException_getKeyword(self.jObj)) ?: "";
    }

    # The function that maps to the `getLocalizedMessage` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `string` value returning from the Java mapping.
    function getLocalizedMessage() returns string {
        return java:toString(org_everit_json_schema_ValidationException_getLocalizedMessage(self.jObj)) ?: "";
    }

    # The function that maps to the `getMessage` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `string` value returning from the Java mapping.
    function getMessage() returns string {
        return java:toString(org_everit_json_schema_ValidationException_getMessage(self.jObj)) ?: "";
    }

    # The function that maps to the `getPointerToViolation` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `string` value returning from the Java mapping.
    function getPointerToViolation() returns string {
        return java:toString(org_everit_json_schema_ValidationException_getPointerToViolation(self.jObj)) ?: "";
    }

    # The function that maps to the `getSchemaLocation` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `string` value returning from the Java mapping.
    function getSchemaLocation() returns string {
        return java:toString(org_everit_json_schema_ValidationException_getSchemaLocation(self.jObj)) ?: "";
    }

    # The function that maps to the `getStackTrace` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `StackTraceElement[]` value returning from the Java mapping.
    function getStackTrace() returns StackTraceElement[]|error {
        handle externalObj = org_everit_json_schema_ValidationException_getStackTrace(self.jObj);
        StackTraceElement[] newObj = [];
        handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
        int count = anyObj.length();
        foreach int i in 0 ... count - 1 {
            StackTraceElement element = new (anyObj[i]);
            newObj[i] = element;
        }
        return newObj;
    }

    # The function that maps to the `getSuppressed` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `Throwable[]` value returning from the Java mapping.
    function getSuppressed() returns Throwable[]|error {
        handle externalObj = org_everit_json_schema_ValidationException_getSuppressed(self.jObj);
        Throwable[] newObj = [];
        handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
        int count = anyObj.length();
        foreach int i in 0 ... count - 1 {
            Throwable element = new (anyObj[i]);
            newObj[i] = element;
        }
        return newObj;
    }

    # The function that maps to the `getViolatedSchema` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `Schema` value returning from the Java mapping.
    function getViolatedSchema() returns Schema {
        handle externalObj = org_everit_json_schema_ValidationException_getViolatedSchema(self.jObj);
        Schema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getViolationCount` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `int` value returning from the Java mapping.
    function getViolationCount() returns int {
        return org_everit_json_schema_ValidationException_getViolationCount(self.jObj);
    }

    # The function that maps to the `hashCode` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `int` value returning from the Java mapping.
    function hashCode() returns int {
        return org_everit_json_schema_ValidationException_hashCode(self.jObj);
    }

    # The function that maps to the `initCause` method of `org.everit.json.schema.ValidationException`.
    #
    # + arg0 - The `Throwable` value required to map with the Java method parameter.
    # + return - The `Throwable` value returning from the Java mapping.
    function initCause(Throwable arg0) returns Throwable {
        handle externalObj = org_everit_json_schema_ValidationException_initCause(self.jObj, arg0.jObj);
        Throwable newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `notify` method of `org.everit.json.schema.ValidationException`.
    function notify() {
        org_everit_json_schema_ValidationException_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `org.everit.json.schema.ValidationException`.
    function notifyAll() {
        org_everit_json_schema_ValidationException_notifyAll(self.jObj);
    }

    # The function that maps to the `prepend` method of `org.everit.json.schema.ValidationException`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `JValidationException` value returning from the Java mapping.
    function prepend(string arg0) returns JValidationException {
        handle externalObj = org_everit_json_schema_ValidationException_prepend(self.jObj, java:fromString(arg0));
        JValidationException newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `prepend` method of `org.everit.json.schema.ValidationException`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Schema` value required to map with the Java method parameter.
    # + return - The `JValidationException` value returning from the Java mapping.
    function prepend2(string arg0, Schema arg1) returns JValidationException {
        handle externalObj = org_everit_json_schema_ValidationException_prepend2(self.jObj, java:fromString(arg0), arg1.jObj);
        JValidationException newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `printStackTrace` method of `org.everit.json.schema.ValidationException`.
    function printStackTrace() {
        org_everit_json_schema_ValidationException_printStackTrace(self.jObj);
    }

    # The function that maps to the `printStackTrace` method of `org.everit.json.schema.ValidationException`.
    #
    # + arg0 - The `PrintStream` value required to map with the Java method parameter.
    function printStackTrace2(PrintStream arg0) {
        org_everit_json_schema_ValidationException_printStackTrace2(self.jObj, arg0.jObj);
    }

    # The function that maps to the `printStackTrace` method of `org.everit.json.schema.ValidationException`.
    #
    # + arg0 - The `PrintWriter` value required to map with the Java method parameter.
    function printStackTrace3(PrintWriter arg0) {
        org_everit_json_schema_ValidationException_printStackTrace3(self.jObj, arg0.jObj);
    }

    # The function that maps to the `setStackTrace` method of `org.everit.json.schema.ValidationException`.
    #
    # + arg0 - The `StackTraceElement[]` value required to map with the Java method parameter.
    # + return - The `error?` value returning from the Java mapping.
    function setStackTrace(StackTraceElement[] arg0) returns error? {
        org_everit_json_schema_ValidationException_setStackTrace(self.jObj, check jarrays:toHandle(arg0, "java.lang.StackTraceElement"));
    }

    # The function that maps to the `toJSON` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `JSONObject` value returning from the Java mapping.
    function toJSON() returns JSONObject {
        handle externalObj = org_everit_json_schema_ValidationException_toJSON(self.jObj);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.ValidationException`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    function 'wait() returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_ValidationException_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.ValidationException`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_ValidationException_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.ValidationException`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_ValidationException_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `org.everit.json.schema.ValidationException`.
#
# + arg0 - The `Class` value required to map with the Java constructor parameter.
# + arg1 - The `Object` value required to map with the Java constructor parameter.
# + return - The new `JValidationException` class generated.
function newJValidationException1(Class arg0, Object arg1) returns JValidationException {
    handle externalObj = org_everit_json_schema_ValidationException_newJValidationException1(arg0.jObj, arg1.jObj);
    JValidationException newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.everit.json.schema.ValidationException`.
#
# + arg0 - The `Schema` value required to map with the Java constructor parameter.
# + arg1 - The `Class` value required to map with the Java constructor parameter.
# + arg2 - The `Object` value required to map with the Java constructor parameter.
# + return - The new `JValidationException` class generated.
function newJValidationException2(Schema arg0, Class arg1, Object arg2) returns JValidationException {
    handle externalObj = org_everit_json_schema_ValidationException_newJValidationException2(arg0.jObj, arg1.jObj, arg2.jObj);
    JValidationException newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.everit.json.schema.ValidationException`.
#
# + arg0 - The `Schema` value required to map with the Java constructor parameter.
# + arg1 - The `Class` value required to map with the Java constructor parameter.
# + arg2 - The `Object` value required to map with the Java constructor parameter.
# + arg3 - The `string` value required to map with the Java constructor parameter.
# + return - The new `JValidationException` class generated.
function newJValidationException3(Schema arg0, Class arg1, Object arg2, string arg3) returns JValidationException {
    handle externalObj = org_everit_json_schema_ValidationException_newJValidationException3(arg0.jObj, arg1.jObj, arg2.jObj, java:fromString(arg3));
    JValidationException newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.everit.json.schema.ValidationException`.
#
# + arg0 - The `Schema` value required to map with the Java constructor parameter.
# + arg1 - The `Class` value required to map with the Java constructor parameter.
# + arg2 - The `Object` value required to map with the Java constructor parameter.
# + arg3 - The `string` value required to map with the Java constructor parameter.
# + arg4 - The `string` value required to map with the Java constructor parameter.
# + return - The new `JValidationException` class generated.
function newJValidationException4(Schema arg0, Class arg1, Object arg2, string arg3, string arg4) returns JValidationException {
    handle externalObj = org_everit_json_schema_ValidationException_newJValidationException4(arg0.jObj, arg1.jObj, arg2.jObj, java:fromString(arg3), java:fromString(arg4));
    JValidationException newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.everit.json.schema.ValidationException`.
#
# + arg0 - The `Schema` value required to map with the Java constructor parameter.
# + arg1 - The `string` value required to map with the Java constructor parameter.
# + return - The new `JValidationException` class generated.
function newJValidationException5(Schema arg0, string arg1) returns JValidationException {
    handle externalObj = org_everit_json_schema_ValidationException_newJValidationException5(arg0.jObj, java:fromString(arg1));
    JValidationException newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.everit.json.schema.ValidationException`.
#
# + arg0 - The `Schema` value required to map with the Java constructor parameter.
# + arg1 - The `string` value required to map with the Java constructor parameter.
# + arg2 - The `List` value required to map with the Java constructor parameter.
# + return - The new `JValidationException` class generated.
function newJValidationException6(Schema arg0, string arg1, List arg2) returns JValidationException {
    handle externalObj = org_everit_json_schema_ValidationException_newJValidationException6(arg0.jObj, java:fromString(arg1), arg2.jObj);
    JValidationException newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.everit.json.schema.ValidationException`.
#
# + arg0 - The `Schema` value required to map with the Java constructor parameter.
# + arg1 - The `string` value required to map with the Java constructor parameter.
# + arg2 - The `string` value required to map with the Java constructor parameter.
# + return - The new `JValidationException` class generated.
function newJValidationException7(Schema arg0, string arg1, string arg2) returns JValidationException {
    handle externalObj = org_everit_json_schema_ValidationException_newJValidationException7(arg0.jObj, java:fromString(arg1), java:fromString(arg2));
    JValidationException newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.everit.json.schema.ValidationException`.
#
# + arg0 - The `Schema` value required to map with the Java constructor parameter.
# + arg1 - The `string` value required to map with the Java constructor parameter.
# + arg2 - The `string` value required to map with the Java constructor parameter.
# + arg3 - The `string` value required to map with the Java constructor parameter.
# + return - The new `JValidationException` class generated.
function newJValidationException8(Schema arg0, string arg1, string arg2, string arg3) returns JValidationException {
    handle externalObj = org_everit_json_schema_ValidationException_newJValidationException8(arg0.jObj, java:fromString(arg1), java:fromString(arg2), java:fromString(arg3));
    JValidationException newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.everit.json.schema.ValidationException`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + return - The new `JValidationException` class generated.
function newJValidationException9(string arg0) returns JValidationException {
    handle externalObj = org_everit_json_schema_ValidationException_newJValidationException9(java:fromString(arg0));
    JValidationException newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `throwFor` method of `org.everit.json.schema.ValidationException`.
#
# + arg0 - The `Schema` value required to map with the Java method parameter.
# + arg1 - The `List` value required to map with the Java method parameter.
function ValidationException_throwFor(Schema arg0, List arg1) {
    org_everit_json_schema_ValidationException_throwFor(arg0.jObj, arg1.jObj);
}

function org_everit_json_schema_ValidationException_addSuppressed(handle receiver, handle arg0) = @java:Method {
    name: "addSuppressed",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["java.lang.Throwable"]
} external;

function org_everit_json_schema_ValidationException_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["java.lang.Object"]
} external;

function org_everit_json_schema_ValidationException_fillInStackTrace(handle receiver) returns handle = @java:Method {
    name: "fillInStackTrace",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getAllMessages(handle receiver) returns handle = @java:Method {
    name: "getAllMessages",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getCause(handle receiver) returns handle = @java:Method {
    name: "getCause",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getCausingExceptions(handle receiver) returns handle = @java:Method {
    name: "getCausingExceptions",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getErrorMessage(handle receiver) returns handle = @java:Method {
    name: "getErrorMessage",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getKeyword(handle receiver) returns handle = @java:Method {
    name: "getKeyword",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getLocalizedMessage(handle receiver) returns handle = @java:Method {
    name: "getLocalizedMessage",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getMessage(handle receiver) returns handle = @java:Method {
    name: "getMessage",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getPointerToViolation(handle receiver) returns handle = @java:Method {
    name: "getPointerToViolation",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getSchemaLocation(handle receiver) returns handle = @java:Method {
    name: "getSchemaLocation",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getStackTrace(handle receiver) returns handle = @java:Method {
    name: "getStackTrace",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getSuppressed(handle receiver) returns handle = @java:Method {
    name: "getSuppressed",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getViolatedSchema(handle receiver) returns handle = @java:Method {
    name: "getViolatedSchema",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_getViolationCount(handle receiver) returns int = @java:Method {
    name: "getViolationCount",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_initCause(handle receiver, handle arg0) returns handle = @java:Method {
    name: "initCause",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["java.lang.Throwable"]
} external;

function org_everit_json_schema_ValidationException_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_prepend(handle receiver, handle arg0) returns handle = @java:Method {
    name: "prepend",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["java.lang.String"]
} external;

function org_everit_json_schema_ValidationException_prepend2(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "prepend",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["java.lang.String", "org.everit.json.schema.Schema"]
} external;

function org_everit_json_schema_ValidationException_printStackTrace(handle receiver) = @java:Method {
    name: "printStackTrace",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_printStackTrace2(handle receiver, handle arg0) = @java:Method {
    name: "printStackTrace",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["java.io.PrintStream"]
} external;

function org_everit_json_schema_ValidationException_printStackTrace3(handle receiver, handle arg0) = @java:Method {
    name: "printStackTrace",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["java.io.PrintWriter"]
} external;

function org_everit_json_schema_ValidationException_setStackTrace(handle receiver, handle arg0) = @java:Method {
    name: "setStackTrace",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["[Ljava.lang.StackTraceElement;"]
} external;

function org_everit_json_schema_ValidationException_throwFor(handle arg0, handle arg1) = @java:Method {
    name: "throwFor",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["org.everit.json.schema.Schema", "java.util.List"]
} external;

function org_everit_json_schema_ValidationException_toJSON(handle receiver) returns handle = @java:Method {
    name: "toJSON",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: []
} external;

function org_everit_json_schema_ValidationException_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["long"]
} external;

function org_everit_json_schema_ValidationException_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["long", "int"]
} external;

function org_everit_json_schema_ValidationException_newJValidationException1(handle arg0, handle arg1) returns handle = @java:Constructor {
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["java.lang.Class", "java.lang.Object"]
} external;

function org_everit_json_schema_ValidationException_newJValidationException2(handle arg0, handle arg1, handle arg2) returns handle = @java:Constructor {
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["org.everit.json.schema.Schema", "java.lang.Class", "java.lang.Object"]
} external;

function org_everit_json_schema_ValidationException_newJValidationException3(handle arg0, handle arg1, handle arg2, handle arg3) returns handle = @java:Constructor {
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["org.everit.json.schema.Schema", "java.lang.Class", "java.lang.Object", "java.lang.String"]
} external;

function org_everit_json_schema_ValidationException_newJValidationException4(handle arg0, handle arg1, handle arg2, handle arg3, handle arg4) returns handle = @java:Constructor {
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["org.everit.json.schema.Schema", "java.lang.Class", "java.lang.Object", "java.lang.String", "java.lang.String"]
} external;

function org_everit_json_schema_ValidationException_newJValidationException5(handle arg0, handle arg1) returns handle = @java:Constructor {
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["org.everit.json.schema.Schema", "java.lang.String"]
} external;

function org_everit_json_schema_ValidationException_newJValidationException6(handle arg0, handle arg1, handle arg2) returns handle = @java:Constructor {
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["org.everit.json.schema.Schema", "java.lang.String", "java.util.List"]
} external;

function org_everit_json_schema_ValidationException_newJValidationException7(handle arg0, handle arg1, handle arg2) returns handle = @java:Constructor {
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["org.everit.json.schema.Schema", "java.lang.String", "java.lang.String"]
} external;

function org_everit_json_schema_ValidationException_newJValidationException8(handle arg0, handle arg1, handle arg2, handle arg3) returns handle = @java:Constructor {
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["org.everit.json.schema.Schema", "java.lang.String", "java.lang.String", "java.lang.String"]
} external;

function org_everit_json_schema_ValidationException_newJValidationException9(handle arg0) returns handle = @java:Constructor {
    'class: "org.everit.json.schema.ValidationException",
    paramTypes: ["java.lang.String"]
} external;

