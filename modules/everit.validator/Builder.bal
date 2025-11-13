import ballerina/jballerina.java;

# Ballerina class mapping for the Java `org.everit.json.schema.Schema$Builder` class.
@java:Binding {'class: "org.everit.json.schema.Schema$Builder"}
public isolated distinct class Builder {

    *java:JObject;
    *Object;

    # The `handle` field that stores the reference to the `org.everit.json.schema.Schema$Builder` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `org.everit.json.schema.Schema$Builder` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.everit.json.schema.Schema$Builder` Java class.
    #
    # + return - The `string` form of the Java object instance.
    isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `build` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + return - The `Schema` value returning from the Java mapping.
    public isolated function build() returns Schema {
        handle externalObj = org_everit_json_schema_Schema_Builder_build(self.jObj);
        Schema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `defaultValue` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `Builder` value returning from the Java mapping.
    function defaultValue(Object arg0) returns Builder {
        handle externalObj = org_everit_json_schema_Schema_Builder_defaultValue(self.jObj, arg0.jObj);
        Builder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `description` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Builder` value returning from the Java mapping.
    function description(string arg0) returns Builder {
        handle externalObj = org_everit_json_schema_Schema_Builder_description(self.jObj, java:fromString(arg0));
        Builder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `equals` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function 'equals(Object arg0) returns boolean {
        return org_everit_json_schema_Schema_Builder_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + return - The `Class` value returning from the Java mapping.
    function getClass() returns Class {
        handle externalObj = org_everit_json_schema_Schema_Builder_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + return - The `int` value returning from the Java mapping.
    function hashCode() returns int {
        return org_everit_json_schema_Schema_Builder_hashCode(self.jObj);
    }

    # The function that maps to the `id` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Builder` value returning from the Java mapping.
    function id(string arg0) returns Builder {
        handle externalObj = org_everit_json_schema_Schema_Builder_id(self.jObj, java:fromString(arg0));
        Builder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `notify` method of `org.everit.json.schema.Schema$Builder`.
    function notify() {
        org_everit_json_schema_Schema_Builder_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `org.everit.json.schema.Schema$Builder`.
    function notifyAll() {
        org_everit_json_schema_Schema_Builder_notifyAll(self.jObj);
    }

    # The function that maps to the `nullable` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `Boolean` value required to map with the Java method parameter.
    # + return - The `Builder` value returning from the Java mapping.
    function nullable(Boolean arg0) returns Builder {
        handle externalObj = org_everit_json_schema_Schema_Builder_nullable(self.jObj, arg0.jObj);
        Builder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `readOnly` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `Boolean` value required to map with the Java method parameter.
    # + return - The `Builder` value returning from the Java mapping.
    function readOnly(Boolean arg0) returns Builder {
        handle externalObj = org_everit_json_schema_Schema_Builder_readOnly(self.jObj, arg0.jObj);
        Builder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `schemaLocation` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `SchemaLocation` value required to map with the Java method parameter.
    # + return - The `Builder` value returning from the Java mapping.
    function schemaLocation(SchemaLocation arg0) returns Builder {
        handle externalObj = org_everit_json_schema_Schema_Builder_schemaLocation(self.jObj, arg0.jObj);
        Builder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `schemaLocation` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Builder` value returning from the Java mapping.
    function schemaLocation2(string arg0) returns Builder {
        handle externalObj = org_everit_json_schema_Schema_Builder_schemaLocation2(self.jObj, java:fromString(arg0));
        Builder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `title` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Builder` value returning from the Java mapping.
    function title(string arg0) returns Builder {
        handle externalObj = org_everit_json_schema_Schema_Builder_title(self.jObj, java:fromString(arg0));
        Builder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `unprocessedProperties` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `Map` value required to map with the Java method parameter.
    # + return - The `Builder` value returning from the Java mapping.
    function unprocessedProperties(Map arg0) returns Builder {
        handle externalObj = org_everit_json_schema_Schema_Builder_unprocessedProperties(self.jObj, arg0.jObj);
        Builder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    function 'wait() returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_Schema_Builder_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_Schema_Builder_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_Schema_Builder_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `writeOnly` method of `org.everit.json.schema.Schema$Builder`.
    #
    # + arg0 - The `Boolean` value required to map with the Java method parameter.
    # + return - The `Builder` value returning from the Java mapping.
    function writeOnly(Boolean arg0) returns Builder {
        handle externalObj = org_everit_json_schema_Schema_Builder_writeOnly(self.jObj, arg0.jObj);
        Builder newObj = new (externalObj);
        return newObj;
    }

    # The function that retrieves the value of the public field `unprocessedProperties`.
    #
    # + return - The `Map` value of the field.
    function getUnprocessedProperties() returns Map {
        handle externalObj = org_everit_json_schema_Schema_Builder_getUnprocessedProperties(self.jObj);
        Map newObj = new (externalObj);
        return newObj;
    }

    # The function to set the value of the public field `unprocessedProperties`.
    #
    # + arg - The `Map` value that is to be set for the field.
    function setUnprocessedProperties(Map arg) {
        org_everit_json_schema_Schema_Builder_setUnprocessedProperties(self.jObj, arg.jObj);
    }

}

isolated function org_everit_json_schema_Schema_Builder_build(handle receiver) returns handle = @java:Method {
    name: "build",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_Builder_defaultValue(handle receiver, handle arg0) returns handle = @java:Method {
    name: "defaultValue",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["java.lang.Object"]
} external;

function org_everit_json_schema_Schema_Builder_description(handle receiver, handle arg0) returns handle = @java:Method {
    name: "description",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["java.lang.String"]
} external;

function org_everit_json_schema_Schema_Builder_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["java.lang.Object"]
} external;

function org_everit_json_schema_Schema_Builder_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_Builder_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_Builder_id(handle receiver, handle arg0) returns handle = @java:Method {
    name: "id",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["java.lang.String"]
} external;

function org_everit_json_schema_Schema_Builder_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_Builder_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_Builder_nullable(handle receiver, handle arg0) returns handle = @java:Method {
    name: "nullable",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["java.lang.Boolean"]
} external;

function org_everit_json_schema_Schema_Builder_readOnly(handle receiver, handle arg0) returns handle = @java:Method {
    name: "readOnly",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["java.lang.Boolean"]
} external;

function org_everit_json_schema_Schema_Builder_schemaLocation(handle receiver, handle arg0) returns handle = @java:Method {
    name: "schemaLocation",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["org.everit.json.schema.SchemaLocation"]
} external;

function org_everit_json_schema_Schema_Builder_schemaLocation2(handle receiver, handle arg0) returns handle = @java:Method {
    name: "schemaLocation",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["java.lang.String"]
} external;

function org_everit_json_schema_Schema_Builder_title(handle receiver, handle arg0) returns handle = @java:Method {
    name: "title",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["java.lang.String"]
} external;

function org_everit_json_schema_Schema_Builder_unprocessedProperties(handle receiver, handle arg0) returns handle = @java:Method {
    name: "unprocessedProperties",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["java.util.Map"]
} external;

function org_everit_json_schema_Schema_Builder_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: []
} external;

function org_everit_json_schema_Schema_Builder_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["long"]
} external;

function org_everit_json_schema_Schema_Builder_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["long", "int"]
} external;

function org_everit_json_schema_Schema_Builder_writeOnly(handle receiver, handle arg0) returns handle = @java:Method {
    name: "writeOnly",
    'class: "org.everit.json.schema.Schema$Builder",
    paramTypes: ["java.lang.Boolean"]
} external;

function org_everit_json_schema_Schema_Builder_getUnprocessedProperties(handle receiver) returns handle = @java:FieldGet {
    name: "unprocessedProperties",
    'class: "org.everit.json.schema.Schema$Builder"
} external;

function org_everit_json_schema_Schema_Builder_setUnprocessedProperties(handle receiver, handle arg) = @java:FieldSet {
    name: "unprocessedProperties",
    'class: "org.everit.json.schema.Schema$Builder"
} external;

