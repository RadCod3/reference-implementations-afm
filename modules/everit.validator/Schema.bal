import ballerina/jballerina.java;

# Ballerina class mapping for the Java `org.everit.json.schema.Schema` class.
@java:Binding {'class: "org.everit.json.schema.Schema"}
public isolated distinct class Schema {

    *java:JObject;
    *Object;

    # The `handle` field that stores the reference to the `org.everit.json.schema.Schema` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `org.everit.json.schema.Schema` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.everit.json.schema.Schema` Java class.
    #
    # + return - The `string` form of the Java object instance.
    isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `definesProperty` method of `org.everit.json.schema.Schema`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function definesProperty(string arg0) returns boolean {
        return org_everit_json_schema_Schema_definesProperty(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `describeTo` method of `org.everit.json.schema.Schema`.
    #
    # + arg0 - The `JSONPrinter` value required to map with the Java method parameter.
    function describeTo(JSONPrinter arg0) {
        org_everit_json_schema_Schema_describeTo(self.jObj, arg0.jObj);
    }

    # The function that maps to the `equals` method of `org.everit.json.schema.Schema`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function 'equals(Object arg0) returns boolean {
        return org_everit_json_schema_Schema_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `Class` value returning from the Java mapping.
    function getClass() returns Class {
        handle externalObj = org_everit_json_schema_Schema_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getDefaultValue` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `Object` value returning from the Java mapping.
    function getDefaultValue() returns Object {
        handle externalObj = org_everit_json_schema_Schema_getDefaultValue(self.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getDescription` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `string` value returning from the Java mapping.
    function getDescription() returns string {
        return java:toString(org_everit_json_schema_Schema_getDescription(self.jObj)) ?: "";
    }

    # The function that maps to the `getId` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `string` value returning from the Java mapping.
    function getId() returns string {
        return java:toString(org_everit_json_schema_Schema_getId(self.jObj)) ?: "";
    }

    # The function that maps to the `getLocation` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `SchemaLocation` value returning from the Java mapping.
    function getLocation() returns SchemaLocation {
        handle externalObj = org_everit_json_schema_Schema_getLocation(self.jObj);
        SchemaLocation newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchemaLocation` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `string` value returning from the Java mapping.
    function getSchemaLocation() returns string {
        return java:toString(org_everit_json_schema_Schema_getSchemaLocation(self.jObj)) ?: "";
    }

    # The function that maps to the `getTitle` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `string` value returning from the Java mapping.
    function getTitle() returns string {
        return java:toString(org_everit_json_schema_Schema_getTitle(self.jObj)) ?: "";
    }

    # The function that maps to the `getUnprocessedProperties` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `Map` value returning from the Java mapping.
    function getUnprocessedProperties() returns Map {
        handle externalObj = org_everit_json_schema_Schema_getUnprocessedProperties(self.jObj);
        Map newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hasDefaultValue` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    function hasDefaultValue() returns boolean {
        return org_everit_json_schema_Schema_hasDefaultValue(self.jObj);
    }

    # The function that maps to the `hashCode` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `int` value returning from the Java mapping.
    function hashCode() returns int {
        return org_everit_json_schema_Schema_hashCode(self.jObj);
    }

    # The function that maps to the `isNullable` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `Boolean` value returning from the Java mapping.
    function isNullable() returns Boolean {
        handle externalObj = org_everit_json_schema_Schema_isNullable(self.jObj);
        Boolean newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `isReadOnly` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `Boolean` value returning from the Java mapping.
    function isReadOnly() returns Boolean {
        handle externalObj = org_everit_json_schema_Schema_isReadOnly(self.jObj);
        Boolean newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `isWriteOnly` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `Boolean` value returning from the Java mapping.
    function isWriteOnly() returns Boolean {
        handle externalObj = org_everit_json_schema_Schema_isWriteOnly(self.jObj);
        Boolean newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `notify` method of `org.everit.json.schema.Schema`.
    function notify() {
        org_everit_json_schema_Schema_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `org.everit.json.schema.Schema`.
    function notifyAll() {
        org_everit_json_schema_Schema_notifyAll(self.jObj);
    }

    # The function that maps to the `validate` method of `org.everit.json.schema.Schema`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    public isolated function validate(Object arg0) {
        org_everit_json_schema_Schema_validate(self.jObj, arg0.jObj);
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.Schema`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    function 'wait() returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_Schema_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.Schema`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_Schema_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.Schema`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_Schema_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

function org_everit_json_schema_Schema_definesProperty(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "definesProperty",
    'class: "org.everit.json.schema.Schema",
    paramTypes: ["java.lang.String"]
} external;

function org_everit_json_schema_Schema_describeTo(handle receiver, handle arg0) = @java:Method {
    name: "describeTo",
    'class: "org.everit.json.schema.Schema",
    paramTypes: ["org.everit.json.schema.internal.JSONPrinter"]
} external;

function org_everit_json_schema_Schema_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "org.everit.json.schema.Schema",
    paramTypes: ["java.lang.Object"]
} external;

function org_everit_json_schema_Schema_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_getDefaultValue(handle receiver) returns handle = @java:Method {
    name: "getDefaultValue",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_getDescription(handle receiver) returns handle = @java:Method {
    name: "getDescription",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_getId(handle receiver) returns handle = @java:Method {
    name: "getId",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_getLocation(handle receiver) returns handle = @java:Method {
    name: "getLocation",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_getSchemaLocation(handle receiver) returns handle = @java:Method {
    name: "getSchemaLocation",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_getTitle(handle receiver) returns handle = @java:Method {
    name: "getTitle",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_getUnprocessedProperties(handle receiver) returns handle = @java:Method {
    name: "getUnprocessedProperties",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_hasDefaultValue(handle receiver) returns boolean = @java:Method {
    name: "hasDefaultValue",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_isNullable(handle receiver) returns handle = @java:Method {
    name: "isNullable",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_isReadOnly(handle receiver) returns handle = @java:Method {
    name: "isReadOnly",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_isWriteOnly(handle receiver) returns handle = @java:Method {
    name: "isWriteOnly",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

isolated function org_everit_json_schema_Schema_validate(handle receiver, handle arg0) = @java:Method {
    name: "validate",
    'class: "org.everit.json.schema.Schema",
    paramTypes: ["java.lang.Object"]
} external;

function org_everit_json_schema_Schema_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.Schema",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.Schema",
    paramTypes: ["long"]
} external;

function org_everit_json_schema_Schema_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.Schema",
    paramTypes: ["long", "int"]
} external;

