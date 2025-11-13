import ballerina/jballerina.java;

# Ballerina class mapping for the Java `java.lang.Enum` class.
@java:Binding {'class: "java.lang.Enum"}
public isolated distinct class Enum {

    *java:JObject;
    *Object;

    # The `handle` field that stores the reference to the `java.lang.Enum` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `java.lang.Enum` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.lang.Enum` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `compareTo` method of `java.lang.Enum`.
    #
    # + arg0 - The `Enum` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    public function compareTo(Enum arg0) returns int {
        return java_lang_Enum_compareTo(self.jObj, arg0.jObj);
    }

    # The function that maps to the `describeConstable` method of `java.lang.Enum`.
    #
    # + return - The `Optional` value returning from the Java mapping.
    public function describeConstable() returns Optional {
        handle externalObj = java_lang_Enum_describeConstable(self.jObj);
        Optional newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `equals` method of `java.lang.Enum`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(Object arg0) returns boolean {
        return java_lang_Enum_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `java.lang.Enum`.
    #
    # + return - The `Class` value returning from the Java mapping.
    public function getClass() returns Class {
        handle externalObj = java_lang_Enum_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getDeclaringClass` method of `java.lang.Enum`.
    #
    # + return - The `Class` value returning from the Java mapping.
    public function getDeclaringClass() returns Class {
        handle externalObj = java_lang_Enum_getDeclaringClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `java.lang.Enum`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return java_lang_Enum_hashCode(self.jObj);
    }

    # The function that maps to the `name` method of `java.lang.Enum`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function name() returns string {
        return java:toString(java_lang_Enum_name(self.jObj)) ?: "";
    }

    # The function that maps to the `notify` method of `java.lang.Enum`.
    public function notify() {
        java_lang_Enum_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.lang.Enum`.
    public function notifyAll() {
        java_lang_Enum_notifyAll(self.jObj);
    }

    # The function that maps to the `ordinal` method of `java.lang.Enum`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function ordinal() returns int {
        return java_lang_Enum_ordinal(self.jObj);
    }

    # The function that maps to the `wait` method of `java.lang.Enum`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function 'wait() returns InterruptedException? {
        error|() externalObj = java_lang_Enum_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.lang.Enum`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = java_lang_Enum_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.lang.Enum`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = java_lang_Enum_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `valueOf` method of `java.lang.Enum`.
#
# + arg0 - The `Class` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + return - The `Enum` value returning from the Java mapping.
public function Enum_valueOf(Class arg0, string arg1) returns Enum {
    handle externalObj = java_lang_Enum_valueOf(arg0.jObj, java:fromString(arg1));
    Enum newObj = new (externalObj);
    return newObj;
}

function java_lang_Enum_compareTo(handle receiver, handle arg0) returns int = @java:Method {
    name: "compareTo",
    'class: "java.lang.Enum",
    paramTypes: ["java.lang.Enum"]
} external;

function java_lang_Enum_describeConstable(handle receiver) returns handle = @java:Method {
    name: "describeConstable",
    'class: "java.lang.Enum",
    paramTypes: []
} external;

function java_lang_Enum_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.lang.Enum",
    paramTypes: ["java.lang.Object"]
} external;

function java_lang_Enum_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.lang.Enum",
    paramTypes: []
} external;

function java_lang_Enum_getDeclaringClass(handle receiver) returns handle = @java:Method {
    name: "getDeclaringClass",
    'class: "java.lang.Enum",
    paramTypes: []
} external;

function java_lang_Enum_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.lang.Enum",
    paramTypes: []
} external;

function java_lang_Enum_name(handle receiver) returns handle = @java:Method {
    name: "name",
    'class: "java.lang.Enum",
    paramTypes: []
} external;

function java_lang_Enum_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.lang.Enum",
    paramTypes: []
} external;

function java_lang_Enum_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.lang.Enum",
    paramTypes: []
} external;

function java_lang_Enum_ordinal(handle receiver) returns int = @java:Method {
    name: "ordinal",
    'class: "java.lang.Enum",
    paramTypes: []
} external;

function java_lang_Enum_valueOf(handle arg0, handle arg1) returns handle = @java:Method {
    name: "valueOf",
    'class: "java.lang.Enum",
    paramTypes: ["java.lang.Class", "java.lang.String"]
} external;

function java_lang_Enum_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.lang.Enum",
    paramTypes: []
} external;

function java_lang_Enum_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.lang.Enum",
    paramTypes: ["long"]
} external;

function java_lang_Enum_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.lang.Enum",
    paramTypes: ["long", "int"]
} external;

