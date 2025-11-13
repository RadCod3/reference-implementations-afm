import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

# Ballerina class mapping for the Java `com.networknt.schema.SpecVersion$VersionFlag` class.
@java:Binding {'class: "com.networknt.schema.SpecVersion$VersionFlag"}
public isolated  distinct class VersionFlag {

    *java:JObject;
    *Enum;

    # The `handle` field that stores the reference to the `com.networknt.schema.SpecVersion$VersionFlag` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `com.networknt.schema.SpecVersion$VersionFlag` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.networknt.schema.SpecVersion$VersionFlag` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `compareTo` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + arg0 - The `Enum` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    public function compareTo(Enum arg0) returns int {
        return com_networknt_schema_SpecVersion_VersionFlag_compareTo(self.jObj, arg0.jObj);
    }

    # The function that maps to the `describeConstable` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + return - The `Optional` value returning from the Java mapping.
    public function describeConstable() returns Optional {
        handle externalObj = com_networknt_schema_SpecVersion_VersionFlag_describeConstable(self.jObj);
        Optional newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `equals` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(Object arg0) returns boolean {
        return com_networknt_schema_SpecVersion_VersionFlag_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + return - The `Class` value returning from the Java mapping.
    public function getClass() returns Class {
        handle externalObj = com_networknt_schema_SpecVersion_VersionFlag_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getDeclaringClass` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + return - The `Class` value returning from the Java mapping.
    public function getDeclaringClass() returns Class {
        handle externalObj = com_networknt_schema_SpecVersion_VersionFlag_getDeclaringClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getId` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getId() returns string {
        return java:toString(com_networknt_schema_SpecVersion_VersionFlag_getId(self.jObj)) ?: "";
    }

    # The function that maps to the `getVersionFlagValue` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function getVersionFlagValue() returns int {
        return com_networknt_schema_SpecVersion_VersionFlag_getVersionFlagValue(self.jObj);
    }

    # The function that maps to the `hashCode` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_networknt_schema_SpecVersion_VersionFlag_hashCode(self.jObj);
    }

    # The function that maps to the `name` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function name() returns string {
        return java:toString(com_networknt_schema_SpecVersion_VersionFlag_name(self.jObj)) ?: "";
    }

    # The function that maps to the `notify` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    public function notify() {
        com_networknt_schema_SpecVersion_VersionFlag_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    public function notifyAll() {
        com_networknt_schema_SpecVersion_VersionFlag_notifyAll(self.jObj);
    }

    # The function that maps to the `ordinal` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function ordinal() returns int {
        return com_networknt_schema_SpecVersion_VersionFlag_ordinal(self.jObj);
    }

    # The function that maps to the `wait` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function 'wait() returns InterruptedException? {
        error|() externalObj = com_networknt_schema_SpecVersion_VersionFlag_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_SpecVersion_VersionFlag_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.SpecVersion$VersionFlag`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_SpecVersion_VersionFlag_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `fromId` method of `com.networknt.schema.SpecVersion$VersionFlag`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + return - The `Optional` value returning from the Java mapping.
public function VersionFlag_fromId(string arg0) returns Optional {
    handle externalObj = com_networknt_schema_SpecVersion_VersionFlag_fromId(java:fromString(arg0));
    Optional newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `valueOf` method of `com.networknt.schema.SpecVersion$VersionFlag`.
#
# + arg0 - The `Class` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + return - The `Enum` value returning from the Java mapping.
public function VersionFlag_valueOf(Class arg0, string arg1) returns Enum {
    handle externalObj = com_networknt_schema_SpecVersion_VersionFlag_valueOf(arg0.jObj, java:fromString(arg1));
    Enum newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `valueOf` method of `com.networknt.schema.SpecVersion$VersionFlag`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + return - The `VersionFlag` value returning from the Java mapping.
public function VersionFlag_valueOf2(string arg0) returns VersionFlag {
    handle externalObj = com_networknt_schema_SpecVersion_VersionFlag_valueOf2(java:fromString(arg0));
    VersionFlag newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `values` method of `com.networknt.schema.SpecVersion$VersionFlag`.
#
# + return - The `VersionFlag[]` value returning from the Java mapping.
public function VersionFlag_values() returns VersionFlag[]|error {
    handle externalObj = com_networknt_schema_SpecVersion_VersionFlag_values();
    VersionFlag[] newObj = [];
    handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
    int count = anyObj.length();
    foreach int i in 0 ... count - 1 {
        VersionFlag element = new (anyObj[i]);
        newObj[i] = element;
    }
    return newObj;
}

# The function that retrieves the value of the public field `V4`.
#
# + return - The `VersionFlag` value of the field.
public function VersionFlag_getV4() returns VersionFlag {
    handle externalObj = com_networknt_schema_SpecVersion_VersionFlag_getV4();
    VersionFlag newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `V6`.
#
# + return - The `VersionFlag` value of the field.
public function VersionFlag_getV6() returns VersionFlag {
    handle externalObj = com_networknt_schema_SpecVersion_VersionFlag_getV6();
    VersionFlag newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `V7`.
#
# + return - The `VersionFlag` value of the field.
public function VersionFlag_getV7() returns VersionFlag {
    handle externalObj = com_networknt_schema_SpecVersion_VersionFlag_getV7();
    VersionFlag newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `V201909`.
#
# + return - The `VersionFlag` value of the field.
public function VersionFlag_getV201909() returns VersionFlag {
    handle externalObj = com_networknt_schema_SpecVersion_VersionFlag_getV201909();
    VersionFlag newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `V202012`.
#
# + return - The `VersionFlag` value of the field.
public isolated function VersionFlag_getV202012() returns VersionFlag {
    handle externalObj = com_networknt_schema_SpecVersion_VersionFlag_getV202012();
    VersionFlag newObj = new (externalObj);
    return newObj;
}

function com_networknt_schema_SpecVersion_VersionFlag_compareTo(handle receiver, handle arg0) returns int = @java:Method {
    name: "compareTo",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: ["java.lang.Enum"]
} external;

function com_networknt_schema_SpecVersion_VersionFlag_describeConstable(handle receiver) returns handle = @java:Method {
    name: "describeConstable",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_VersionFlag_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: ["java.lang.Object"]
} external;

function com_networknt_schema_SpecVersion_VersionFlag_fromId(handle arg0) returns handle = @java:Method {
    name: "fromId",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: ["java.lang.String"]
} external;

function com_networknt_schema_SpecVersion_VersionFlag_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_VersionFlag_getDeclaringClass(handle receiver) returns handle = @java:Method {
    name: "getDeclaringClass",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_VersionFlag_getId(handle receiver) returns handle = @java:Method {
    name: "getId",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_VersionFlag_getVersionFlagValue(handle receiver) returns int = @java:Method {
    name: "getVersionFlagValue",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_VersionFlag_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_VersionFlag_name(handle receiver) returns handle = @java:Method {
    name: "name",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_VersionFlag_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_VersionFlag_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_VersionFlag_ordinal(handle receiver) returns int = @java:Method {
    name: "ordinal",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_VersionFlag_valueOf(handle arg0, handle arg1) returns handle = @java:Method {
    name: "valueOf",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: ["java.lang.Class", "java.lang.String"]
} external;

function com_networknt_schema_SpecVersion_VersionFlag_valueOf2(handle arg0) returns handle = @java:Method {
    name: "valueOf",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: ["java.lang.String"]
} external;

function com_networknt_schema_SpecVersion_VersionFlag_values() returns handle = @java:Method {
    name: "values",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_VersionFlag_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: []
} external;

function com_networknt_schema_SpecVersion_VersionFlag_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: ["long"]
} external;

function com_networknt_schema_SpecVersion_VersionFlag_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.SpecVersion$VersionFlag",
    paramTypes: ["long", "int"]
} external;

function com_networknt_schema_SpecVersion_VersionFlag_getV4() returns handle = @java:FieldGet {
    name: "V4",
    'class: "com.networknt.schema.SpecVersion$VersionFlag"
} external;

function com_networknt_schema_SpecVersion_VersionFlag_getV6() returns handle = @java:FieldGet {
    name: "V6",
    'class: "com.networknt.schema.SpecVersion$VersionFlag"
} external;

function com_networknt_schema_SpecVersion_VersionFlag_getV7() returns handle = @java:FieldGet {
    name: "V7",
    'class: "com.networknt.schema.SpecVersion$VersionFlag"
} external;

function com_networknt_schema_SpecVersion_VersionFlag_getV201909() returns handle = @java:FieldGet {
    name: "V201909",
    'class: "com.networknt.schema.SpecVersion$VersionFlag"
} external;

isolated function com_networknt_schema_SpecVersion_VersionFlag_getV202012() returns handle = @java:FieldGet {
    name: "V202012",
    'class: "com.networknt.schema.SpecVersion$VersionFlag"
} external;

