import ballerina/jballerina.java;

# Ballerina class mapping for the Java `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder` class.
@java:Binding {'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder"}
public isolated distinct class SchemaLoaderBuilder {

    *java:JObject;
    *Object;

    # The `handle` field that stores the reference to the `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder` Java class.
    #
    # + return - The `string` form of the Java object instance.
    isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `addFormatValidator` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `FormatValidator` value required to map with the Java method parameter.
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function addFormatValidator(FormatValidator arg0) returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_addFormatValidator(self.jObj, arg0.jObj);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `addFormatValidator` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `FormatValidator` value required to map with the Java method parameter.
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function addFormatValidator2(string arg0, FormatValidator arg1) returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_addFormatValidator2(self.jObj, java:fromString(arg0), arg1.jObj);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `build` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + return - The `SchemaLoader` value returning from the Java mapping.
    public isolated function build() returns SchemaLoader {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_build(self.jObj);
        SchemaLoader newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `draftV6Support` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function draftV6Support() returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_draftV6Support(self.jObj);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `draftV7Support` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function draftV7Support() returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_draftV7Support(self.jObj);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `enableOverrideOfBuiltInFormatValidators` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function enableOverrideOfBuiltInFormatValidators() returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_enableOverrideOfBuiltInFormatValidators(self.jObj);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `equals` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function 'equals(Object arg0) returns boolean {
        return org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + return - The `Class` value returning from the Java mapping.
    function getClass() returns Class {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getRootSchemaJson` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + return - The `JSONObject` value returning from the Java mapping.
    function getRootSchemaJson() returns JSONObject {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_getRootSchemaJson(self.jObj);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + return - The `int` value returning from the Java mapping.
    function hashCode() returns int {
        return org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_hashCode(self.jObj);
    }

    # The function that maps to the `httpClient` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `SchemaClient` value required to map with the Java method parameter.
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function httpClient(SchemaClient arg0) returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_httpClient(self.jObj, arg0.jObj);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `notify` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    function notify() {
        org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    function notifyAll() {
        org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_notifyAll(self.jObj);
    }

    # The function that maps to the `nullableSupport` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `boolean` value required to map with the Java method parameter.
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function nullableSupport(boolean arg0) returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_nullableSupport(self.jObj, arg0);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `regexpFactory` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `RegexpFactory` value required to map with the Java method parameter.
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function regexpFactory(RegexpFactory arg0) returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_regexpFactory(self.jObj, arg0.jObj);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `registerSchemaByURI` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `URI` value required to map with the Java method parameter.
    # + arg1 - The `Object` value required to map with the Java method parameter.
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function registerSchemaByURI(URI arg0, Object arg1) returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_registerSchemaByURI(self.jObj, arg0.jObj, arg1.jObj);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `resolutionScope` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function resolutionScope(string arg0) returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_resolutionScope(self.jObj, java:fromString(arg0));
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `resolutionScope` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `URI` value required to map with the Java method parameter.
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function resolutionScope2(URI arg0) returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_resolutionScope2(self.jObj, arg0.jObj);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `schemaClient` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `SchemaClient` value required to map with the Java method parameter.
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function schemaClient(SchemaClient arg0) returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_schemaClient(self.jObj, arg0.jObj);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `schemaJson` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `JSONObject` value required to map with the Java method parameter.
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    public isolated function schemaJson(JSONObject arg0) returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_schemaJson(self.jObj, arg0.jObj);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `schemaJson` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function schemaJson2(Object arg0) returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_schemaJson2(self.jObj, arg0.jObj);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `useDefaults` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `boolean` value required to map with the Java method parameter.
    # + return - The `SchemaLoaderBuilder` value returning from the Java mapping.
    function useDefaults(boolean arg0) returns SchemaLoaderBuilder {
        handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_useDefaults(self.jObj, arg0);
        SchemaLoaderBuilder newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    function 'wait() returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder`.
#
# + return - The new `SchemaLoaderBuilder` class generated.
public isolated function newSchemaLoaderBuilder1() returns SchemaLoaderBuilder {
    handle externalObj = org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_newSchemaLoaderBuilder1();
    SchemaLoaderBuilder newObj = new (externalObj);
    return newObj;
}

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_addFormatValidator(handle receiver, handle arg0) returns handle = @java:Method {
    name: "addFormatValidator",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["org.everit.json.schema.FormatValidator"]
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_addFormatValidator2(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "addFormatValidator",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["java.lang.String", "org.everit.json.schema.FormatValidator"]
} external;

isolated function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_build(handle receiver) returns handle = @java:Method {
    name: "build",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_draftV6Support(handle receiver) returns handle = @java:Method {
    name: "draftV6Support",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_draftV7Support(handle receiver) returns handle = @java:Method {
    name: "draftV7Support",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_enableOverrideOfBuiltInFormatValidators(handle receiver) returns handle = @java:Method {
    name: "enableOverrideOfBuiltInFormatValidators",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["java.lang.Object"]
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_getRootSchemaJson(handle receiver) returns handle = @java:Method {
    name: "getRootSchemaJson",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_httpClient(handle receiver, handle arg0) returns handle = @java:Method {
    name: "httpClient",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["org.everit.json.schema.loader.SchemaClient"]
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_nullableSupport(handle receiver, boolean arg0) returns handle = @java:Method {
    name: "nullableSupport",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["boolean"]
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_regexpFactory(handle receiver, handle arg0) returns handle = @java:Method {
    name: "regexpFactory",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["org.everit.json.schema.regexp.RegexpFactory"]
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_registerSchemaByURI(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "registerSchemaByURI",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["java.net.URI", "java.lang.Object"]
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_resolutionScope(handle receiver, handle arg0) returns handle = @java:Method {
    name: "resolutionScope",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["java.lang.String"]
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_resolutionScope2(handle receiver, handle arg0) returns handle = @java:Method {
    name: "resolutionScope",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["java.net.URI"]
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_schemaClient(handle receiver, handle arg0) returns handle = @java:Method {
    name: "schemaClient",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["org.everit.json.schema.loader.SchemaClient"]
} external;

isolated function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_schemaJson(handle receiver, handle arg0) returns handle = @java:Method {
    name: "schemaJson",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["org.json.JSONObject"]
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_schemaJson2(handle receiver, handle arg0) returns handle = @java:Method {
    name: "schemaJson",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["java.lang.Object"]
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_useDefaults(handle receiver, boolean arg0) returns handle = @java:Method {
    name: "useDefaults",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["boolean"]
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: []
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["long"]
} external;

function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: ["long", "int"]
} external;

isolated function org_everit_json_schema_loader_SchemaLoader_SchemaLoaderBuilder_newSchemaLoaderBuilder1() returns handle = @java:Constructor {
    'class: "org.everit.json.schema.loader.SchemaLoader$SchemaLoaderBuilder",
    paramTypes: []
} external;

