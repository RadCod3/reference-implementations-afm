import ballerina/jballerina.java;

# Ballerina class mapping for the Java `com.networknt.schema.SpecVersion` class.
@java:Binding {'class: "com.networknt.schema.SpecVersion"}
public isolated distinct class SpecVersion {

    *java:JObject;
    *Object;

    # The `handle` field that stores the reference to the `com.networknt.schema.SpecVersion` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `com.networknt.schema.SpecVersion` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.networknt.schema.SpecVersion` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `equals` method of `com.networknt.schema.SpecVersion`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(Object arg0) returns boolean {
        return com_networknt_schema_SpecVersion_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `com.networknt.schema.SpecVersion`.
    #
    # + return - The `Class` value returning from the Java mapping.
    public function getClass() returns Class {
        handle externalObj = com_networknt_schema_SpecVersion_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `com.networknt.schema.SpecVersion`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_networknt_schema_SpecVersion_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `com.networknt.schema.SpecVersion`.
    public function notify() {
        com_networknt_schema_SpecVersion_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.networknt.schema.SpecVersion`.
    public function notifyAll() {
        com_networknt_schema_SpecVersion_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `com.networknt.schema.SpecVersion`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function 'wait() returns InterruptedException? {
        error|() externalObj = com_networknt_schema_SpecVersion_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.SpecVersion`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_SpecVersion_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.SpecVersion`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_SpecVersion_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `com.networknt.schema.SpecVersion`.
#
# + return - The new `SpecVersion` class generated.
public function newSpecVersion1() returns SpecVersion {
    handle externalObj = com_networknt_schema_SpecVersion_newSpecVersion1();
    SpecVersion newObj = new (externalObj);
    return newObj;
}

function com_networknt_schema_SpecVersion_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.networknt.schema.SpecVersion",
    paramTypes: ["java.lang.Object"]
} external;

function com_networknt_schema_SpecVersion_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.networknt.schema.SpecVersion",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.networknt.schema.SpecVersion",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.networknt.schema.SpecVersion",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.networknt.schema.SpecVersion",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.SpecVersion",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.SpecVersion",
    paramTypes: ["long"]
} external;

function com_networknt_schema_SpecVersion_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.SpecVersion",
    paramTypes: ["long", "int"]
} external;

function com_networknt_schema_SpecVersion_newSpecVersion1() returns handle = @java:Constructor {
    'class: "com.networknt.schema.SpecVersion",
    paramTypes: []
} external;

