import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

# Ballerina class mapping for the Java `com.networknt.schema.InputFormat` class.
@java:Binding {'class: "com.networknt.schema.InputFormat"}
public isolated distinct class InputFormat {

    *java:JObject;
    *Enum;

    # The `handle` field that stores the reference to the `com.networknt.schema.InputFormat` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `com.networknt.schema.InputFormat` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.networknt.schema.InputFormat` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `compareTo` method of `com.networknt.schema.InputFormat`.
    #
    # + arg0 - The `Enum` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    public function compareTo(Enum arg0) returns int {
        return com_networknt_schema_InputFormat_compareTo(self.jObj, arg0.jObj);
    }

    # The function that maps to the `describeConstable` method of `com.networknt.schema.InputFormat`.
    #
    # + return - The `Optional` value returning from the Java mapping.
    public function describeConstable() returns Optional {
        handle externalObj = com_networknt_schema_InputFormat_describeConstable(self.jObj);
        Optional newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `equals` method of `com.networknt.schema.InputFormat`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(Object arg0) returns boolean {
        return com_networknt_schema_InputFormat_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `com.networknt.schema.InputFormat`.
    #
    # + return - The `Class` value returning from the Java mapping.
    public function getClass() returns Class {
        handle externalObj = com_networknt_schema_InputFormat_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getDeclaringClass` method of `com.networknt.schema.InputFormat`.
    #
    # + return - The `Class` value returning from the Java mapping.
    public function getDeclaringClass() returns Class {
        handle externalObj = com_networknt_schema_InputFormat_getDeclaringClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `com.networknt.schema.InputFormat`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_networknt_schema_InputFormat_hashCode(self.jObj);
    }

    # The function that maps to the `name` method of `com.networknt.schema.InputFormat`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function name() returns string {
        return java:toString(com_networknt_schema_InputFormat_name(self.jObj)) ?: "";
    }

    # The function that maps to the `notify` method of `com.networknt.schema.InputFormat`.
    public function notify() {
        com_networknt_schema_InputFormat_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.networknt.schema.InputFormat`.
    public function notifyAll() {
        com_networknt_schema_InputFormat_notifyAll(self.jObj);
    }

    # The function that maps to the `ordinal` method of `com.networknt.schema.InputFormat`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function ordinal() returns int {
        return com_networknt_schema_InputFormat_ordinal(self.jObj);
    }

    # The function that maps to the `wait` method of `com.networknt.schema.InputFormat`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function 'wait() returns InterruptedException? {
        error|() externalObj = com_networknt_schema_InputFormat_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.InputFormat`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_InputFormat_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.InputFormat`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_InputFormat_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `valueOf` method of `com.networknt.schema.InputFormat`.
#
# + arg0 - The `Class` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + return - The `Enum` value returning from the Java mapping.
public function InputFormat_valueOf(Class arg0, string arg1) returns Enum {
    handle externalObj = com_networknt_schema_InputFormat_valueOf(arg0.jObj, java:fromString(arg1));
    Enum newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `valueOf` method of `com.networknt.schema.InputFormat`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + return - The `InputFormat` value returning from the Java mapping.
public function InputFormat_valueOf2(string arg0) returns InputFormat {
    handle externalObj = com_networknt_schema_InputFormat_valueOf2(java:fromString(arg0));
    InputFormat newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `values` method of `com.networknt.schema.InputFormat`.
#
# + return - The `InputFormat[]` value returning from the Java mapping.
public function InputFormat_values() returns InputFormat[]|error {
    handle externalObj = com_networknt_schema_InputFormat_values();
    InputFormat[] newObj = [];
    handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
    int count = anyObj.length();
    foreach int i in 0 ... count - 1 {
        InputFormat element = new (anyObj[i]);
        newObj[i] = element;
    }
    return newObj;
}

# The function that retrieves the value of the public field `JSON`.
#
# + return - The `InputFormat` value of the field.
public isolated function InputFormat_getJSON() returns InputFormat {
    handle externalObj = com_networknt_schema_InputFormat_getJSON();
    InputFormat newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `YAML`.
#
# + return - The `InputFormat` value of the field.
public function InputFormat_getYAML() returns InputFormat {
    handle externalObj = com_networknt_schema_InputFormat_getYAML();
    InputFormat newObj = new (externalObj);
    return newObj;
}

function com_networknt_schema_InputFormat_compareTo(handle receiver, handle arg0) returns int = @java:Method {
    name: "compareTo",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: ["java.lang.Enum"]
} external;

function com_networknt_schema_InputFormat_describeConstable(handle receiver) returns handle = @java:Method {
    name: "describeConstable",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: []
} external;

function com_networknt_schema_InputFormat_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: ["java.lang.Object"]
} external;

function com_networknt_schema_InputFormat_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: []
} external;

function com_networknt_schema_InputFormat_getDeclaringClass(handle receiver) returns handle = @java:Method {
    name: "getDeclaringClass",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: []
} external;

function com_networknt_schema_InputFormat_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: []
} external;

function com_networknt_schema_InputFormat_name(handle receiver) returns handle = @java:Method {
    name: "name",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: []
} external;

function com_networknt_schema_InputFormat_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: []
} external;

function com_networknt_schema_InputFormat_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: []
} external;

function com_networknt_schema_InputFormat_ordinal(handle receiver) returns int = @java:Method {
    name: "ordinal",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: []
} external;

function com_networknt_schema_InputFormat_valueOf(handle arg0, handle arg1) returns handle = @java:Method {
    name: "valueOf",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: ["java.lang.Class", "java.lang.String"]
} external;

function com_networknt_schema_InputFormat_valueOf2(handle arg0) returns handle = @java:Method {
    name: "valueOf",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: ["java.lang.String"]
} external;

function com_networknt_schema_InputFormat_values() returns handle = @java:Method {
    name: "values",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: []
} external;

function com_networknt_schema_InputFormat_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: []
} external;

function com_networknt_schema_InputFormat_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: ["long"]
} external;

function com_networknt_schema_InputFormat_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.InputFormat",
    paramTypes: ["long", "int"]
} external;

isolated function com_networknt_schema_InputFormat_getJSON() returns handle = @java:FieldGet {
    name: "JSON",
    'class: "com.networknt.schema.InputFormat"
} external;

function com_networknt_schema_InputFormat_getYAML() returns handle = @java:FieldGet {
    name: "YAML",
    'class: "com.networknt.schema.InputFormat"
} external;

