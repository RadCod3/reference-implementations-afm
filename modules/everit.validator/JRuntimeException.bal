import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

# Ballerina class mapping for the Java `java.lang.RuntimeException` class.
@java:Binding {'class: "java.lang.RuntimeException"}
isolated distinct class JRuntimeException {

    *java:JObject;
    *JException;

    # The `handle` field that stores the reference to the `java.lang.RuntimeException` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `java.lang.RuntimeException` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.lang.RuntimeException` Java class.
    #
    # + return - The `string` form of the Java object instance.
    isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `addSuppressed` method of `java.lang.RuntimeException`.
    #
    # + arg0 - The `Throwable` value required to map with the Java method parameter.
    function addSuppressed(Throwable arg0) {
        java_lang_RuntimeException_addSuppressed(self.jObj, arg0.jObj);
    }

    # The function that maps to the `equals` method of `java.lang.RuntimeException`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function 'equals(Object arg0) returns boolean {
        return java_lang_RuntimeException_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `fillInStackTrace` method of `java.lang.RuntimeException`.
    #
    # + return - The `Throwable` value returning from the Java mapping.
    function fillInStackTrace() returns Throwable {
        handle externalObj = java_lang_RuntimeException_fillInStackTrace(self.jObj);
        Throwable newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCause` method of `java.lang.RuntimeException`.
    #
    # + return - The `Throwable` value returning from the Java mapping.
    function getCause() returns Throwable {
        handle externalObj = java_lang_RuntimeException_getCause(self.jObj);
        Throwable newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getClass` method of `java.lang.RuntimeException`.
    #
    # + return - The `Class` value returning from the Java mapping.
    function getClass() returns Class {
        handle externalObj = java_lang_RuntimeException_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getLocalizedMessage` method of `java.lang.RuntimeException`.
    #
    # + return - The `string` value returning from the Java mapping.
    function getLocalizedMessage() returns string {
        return java:toString(java_lang_RuntimeException_getLocalizedMessage(self.jObj)) ?: "";
    }

    # The function that maps to the `getMessage` method of `java.lang.RuntimeException`.
    #
    # + return - The `string` value returning from the Java mapping.
    function getMessage() returns string {
        return java:toString(java_lang_RuntimeException_getMessage(self.jObj)) ?: "";
    }

    # The function that maps to the `getStackTrace` method of `java.lang.RuntimeException`.
    #
    # + return - The `StackTraceElement[]` value returning from the Java mapping.
    function getStackTrace() returns StackTraceElement[]|error {
        handle externalObj = java_lang_RuntimeException_getStackTrace(self.jObj);
        StackTraceElement[] newObj = [];
        handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
        int count = anyObj.length();
        foreach int i in 0 ... count - 1 {
            StackTraceElement element = new (anyObj[i]);
            newObj[i] = element;
        }
        return newObj;
    }

    # The function that maps to the `getSuppressed` method of `java.lang.RuntimeException`.
    #
    # + return - The `Throwable[]` value returning from the Java mapping.
    function getSuppressed() returns Throwable[]|error {
        handle externalObj = java_lang_RuntimeException_getSuppressed(self.jObj);
        Throwable[] newObj = [];
        handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
        int count = anyObj.length();
        foreach int i in 0 ... count - 1 {
            Throwable element = new (anyObj[i]);
            newObj[i] = element;
        }
        return newObj;
    }

    # The function that maps to the `hashCode` method of `java.lang.RuntimeException`.
    #
    # + return - The `int` value returning from the Java mapping.
    function hashCode() returns int {
        return java_lang_RuntimeException_hashCode(self.jObj);
    }

    # The function that maps to the `initCause` method of `java.lang.RuntimeException`.
    #
    # + arg0 - The `Throwable` value required to map with the Java method parameter.
    # + return - The `Throwable` value returning from the Java mapping.
    function initCause(Throwable arg0) returns Throwable {
        handle externalObj = java_lang_RuntimeException_initCause(self.jObj, arg0.jObj);
        Throwable newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `notify` method of `java.lang.RuntimeException`.
    function notify() {
        java_lang_RuntimeException_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.lang.RuntimeException`.
    function notifyAll() {
        java_lang_RuntimeException_notifyAll(self.jObj);
    }

    # The function that maps to the `printStackTrace` method of `java.lang.RuntimeException`.
    function printStackTrace() {
        java_lang_RuntimeException_printStackTrace(self.jObj);
    }

    # The function that maps to the `printStackTrace` method of `java.lang.RuntimeException`.
    #
    # + arg0 - The `PrintStream` value required to map with the Java method parameter.
    function printStackTrace2(PrintStream arg0) {
        java_lang_RuntimeException_printStackTrace2(self.jObj, arg0.jObj);
    }

    # The function that maps to the `printStackTrace` method of `java.lang.RuntimeException`.
    #
    # + arg0 - The `PrintWriter` value required to map with the Java method parameter.
    function printStackTrace3(PrintWriter arg0) {
        java_lang_RuntimeException_printStackTrace3(self.jObj, arg0.jObj);
    }

    # The function that maps to the `setStackTrace` method of `java.lang.RuntimeException`.
    #
    # + arg0 - The `StackTraceElement[]` value required to map with the Java method parameter.
    # + return - The `error?` value returning from the Java mapping.
    function setStackTrace(StackTraceElement[] arg0) returns error? {
        java_lang_RuntimeException_setStackTrace(self.jObj, check jarrays:toHandle(arg0, "java.lang.StackTraceElement"));
    }

    # The function that maps to the `wait` method of `java.lang.RuntimeException`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    function 'wait() returns InterruptedException? {
        error|() externalObj = java_lang_RuntimeException_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.lang.RuntimeException`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = java_lang_RuntimeException_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.lang.RuntimeException`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = java_lang_RuntimeException_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `java.lang.RuntimeException`.
#
# + return - The new `JRuntimeException` class generated.
function newJRuntimeException1() returns JRuntimeException {
    handle externalObj = java_lang_RuntimeException_newJRuntimeException1();
    JRuntimeException newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `java.lang.RuntimeException`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + return - The new `JRuntimeException` class generated.
function newJRuntimeException2(string arg0) returns JRuntimeException {
    handle externalObj = java_lang_RuntimeException_newJRuntimeException2(java:fromString(arg0));
    JRuntimeException newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `java.lang.RuntimeException`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + arg1 - The `Throwable` value required to map with the Java constructor parameter.
# + return - The new `JRuntimeException` class generated.
function newJRuntimeException3(string arg0, Throwable arg1) returns JRuntimeException {
    handle externalObj = java_lang_RuntimeException_newJRuntimeException3(java:fromString(arg0), arg1.jObj);
    JRuntimeException newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `java.lang.RuntimeException`.
#
# + arg0 - The `Throwable` value required to map with the Java constructor parameter.
# + return - The new `JRuntimeException` class generated.
function newJRuntimeException4(Throwable arg0) returns JRuntimeException {
    handle externalObj = java_lang_RuntimeException_newJRuntimeException4(arg0.jObj);
    JRuntimeException newObj = new (externalObj);
    return newObj;
}

function java_lang_RuntimeException_addSuppressed(handle receiver, handle arg0) = @java:Method {
    name: "addSuppressed",
    'class: "java.lang.RuntimeException",
    paramTypes: ["java.lang.Throwable"]
} external;

function java_lang_RuntimeException_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.lang.RuntimeException",
    paramTypes: ["java.lang.Object"]
} external;

function java_lang_RuntimeException_fillInStackTrace(handle receiver) returns handle = @java:Method {
    name: "fillInStackTrace",
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_getCause(handle receiver) returns handle = @java:Method {
    name: "getCause",
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_getLocalizedMessage(handle receiver) returns handle = @java:Method {
    name: "getLocalizedMessage",
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_getMessage(handle receiver) returns handle = @java:Method {
    name: "getMessage",
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_getStackTrace(handle receiver) returns handle = @java:Method {
    name: "getStackTrace",
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_getSuppressed(handle receiver) returns handle = @java:Method {
    name: "getSuppressed",
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_initCause(handle receiver, handle arg0) returns handle = @java:Method {
    name: "initCause",
    'class: "java.lang.RuntimeException",
    paramTypes: ["java.lang.Throwable"]
} external;

function java_lang_RuntimeException_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_printStackTrace(handle receiver) = @java:Method {
    name: "printStackTrace",
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_printStackTrace2(handle receiver, handle arg0) = @java:Method {
    name: "printStackTrace",
    'class: "java.lang.RuntimeException",
    paramTypes: ["java.io.PrintStream"]
} external;

function java_lang_RuntimeException_printStackTrace3(handle receiver, handle arg0) = @java:Method {
    name: "printStackTrace",
    'class: "java.lang.RuntimeException",
    paramTypes: ["java.io.PrintWriter"]
} external;

function java_lang_RuntimeException_setStackTrace(handle receiver, handle arg0) = @java:Method {
    name: "setStackTrace",
    'class: "java.lang.RuntimeException",
    paramTypes: ["[Ljava.lang.StackTraceElement;"]
} external;

function java_lang_RuntimeException_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.lang.RuntimeException",
    paramTypes: ["long"]
} external;

function java_lang_RuntimeException_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.lang.RuntimeException",
    paramTypes: ["long", "int"]
} external;

function java_lang_RuntimeException_newJRuntimeException1() returns handle = @java:Constructor {
    'class: "java.lang.RuntimeException",
    paramTypes: []
} external;

function java_lang_RuntimeException_newJRuntimeException2(handle arg0) returns handle = @java:Constructor {
    'class: "java.lang.RuntimeException",
    paramTypes: ["java.lang.String"]
} external;

function java_lang_RuntimeException_newJRuntimeException3(handle arg0, handle arg1) returns handle = @java:Constructor {
    'class: "java.lang.RuntimeException",
    paramTypes: ["java.lang.String", "java.lang.Throwable"]
} external;

function java_lang_RuntimeException_newJRuntimeException4(handle arg0) returns handle = @java:Constructor {
    'class: "java.lang.RuntimeException",
    paramTypes: ["java.lang.Throwable"]
} external;

