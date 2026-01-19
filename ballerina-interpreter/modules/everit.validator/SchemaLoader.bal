import ballerina/jballerina.java;

# Ballerina class mapping for the Java `org.everit.json.schema.loader.SchemaLoader` class.
@java:Binding {'class: "org.everit.json.schema.loader.SchemaLoader"}
public isolated distinct class SchemaLoader {

    *java:JObject;
    *Object;

    # The `handle` field that stores the reference to the `org.everit.json.schema.loader.SchemaLoader` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `org.everit.json.schema.loader.SchemaLoader` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.everit.json.schema.loader.SchemaLoader` Java class.
    #
    # + return - The `string` form of the Java object instance.
    isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `equals` method of `org.everit.json.schema.loader.SchemaLoader`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function 'equals(Object arg0) returns boolean {
        return org_everit_json_schema_loader_SchemaLoader_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `org.everit.json.schema.loader.SchemaLoader`.
    #
    # + return - The `Class` value returning from the Java mapping.
    function getClass() returns Class {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `org.everit.json.schema.loader.SchemaLoader`.
    #
    # + return - The `int` value returning from the Java mapping.
    function hashCode() returns int {
        return org_everit_json_schema_loader_SchemaLoader_hashCode(self.jObj);
    }

    # The function that maps to the `load` method of `org.everit.json.schema.loader.SchemaLoader`.
    #
    # + return - The `Builder` value returning from the Java mapping.
    public isolated function load() returns Builder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_load(self.jObj);
        Builder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `notify` method of `org.everit.json.schema.loader.SchemaLoader`.
    function notify() {
        org_everit_json_schema_loader_SchemaLoader_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `org.everit.json.schema.loader.SchemaLoader`.
    function notifyAll() {
        org_everit_json_schema_loader_SchemaLoader_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.loader.SchemaLoader`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    function 'wait() returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_loader_SchemaLoader_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.loader.SchemaLoader`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_loader_SchemaLoader_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.loader.SchemaLoader`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_loader_SchemaLoader_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `org.everit.json.schema.loader.SchemaLoader`.
#
# + arg0 - The `SchemaLoaderBuilder` value required to map with the Java constructor parameter.
# + return - The new `SchemaLoader` class generated.
function newSchemaLoader1(SchemaLoaderBuilder arg0) returns SchemaLoader {
    handle externalObj = org_everit_json_schema_loader_SchemaLoader_newSchemaLoader1(arg0.jObj);
    SchemaLoader newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `builder` method of `org.everit.json.schema.loader.SchemaLoader`.
#
# + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
function SchemaLoader_builder() returns SchemaLoaderBuilder {
    handle externalObj = org_everit_json_schema_loader_SchemaLoader_builder();
    SchemaLoaderBuilder newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `load` method of `org.everit.json.schema.loader.SchemaLoader`.
#
# + arg0 - The `JSONObject` value required to map with the Java method parameter.
# + return - The `Schema` value returning from the Java mapping.
function SchemaLoader_load2(JSONObject arg0) returns Schema {
    handle externalObj = org_everit_json_schema_loader_SchemaLoader_load2(arg0.jObj);
    Schema newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `load` method of `org.everit.json.schema.loader.SchemaLoader`.
#
# + arg0 - The `JSONObject` value required to map with the Java method parameter.
# + arg1 - The `SchemaClient` value required to map with the Java method parameter.
# + return - The `Schema` value returning from the Java mapping.
function SchemaLoader_load3(JSONObject arg0, SchemaClient arg1) returns Schema {
    handle externalObj = org_everit_json_schema_loader_SchemaLoader_load3(arg0.jObj, arg1.jObj);
    Schema newObj = new (externalObj);
    return newObj;
}

function org_everit_json_schema_loader_SchemaLoader_builder() returns handle = @java:Method {
    name: "builder",
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: ["java.lang.Object"]
} external;

function org_everit_json_schema_loader_SchemaLoader_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: []
} external;

isolated function org_everit_json_schema_loader_SchemaLoader_load(handle receiver) returns handle = @java:Method {
    name: "load",
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_load2(handle arg0) returns handle = @java:Method {
    name: "load",
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: ["org.json.JSONObject"]
} external;

function org_everit_json_schema_loader_SchemaLoader_load3(handle arg0, handle arg1) returns handle = @java:Method {
    name: "load",
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: ["org.json.JSONObject", "org.everit.json.schema.loader.SchemaClient"]
} external;

function org_everit_json_schema_loader_SchemaLoader_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: ["long"]
} external;

function org_everit_json_schema_loader_SchemaLoader_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: ["long", "int"]
} external;

function org_everit_json_schema_loader_SchemaLoader_newSchemaLoader1(handle arg0) returns handle = @java:Constructor {
    'class: "org.everit.json.schema.loader.SchemaLoader",
    paramTypes: ["org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder"]
} external;

