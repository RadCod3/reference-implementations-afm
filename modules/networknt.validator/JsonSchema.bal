import ballerina/jballerina.java;

# Ballerina class mapping for the Java `com.networknt.schema.JsonSchema` class.
@java:Binding {'class: "com.networknt.schema.JsonSchema"}
public isolated distinct class JsonSchema {

    *java:JObject;
    *BaseJsonValidator;

    # The `handle` field that stores the reference to the `com.networknt.schema.JsonSchema` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `com.networknt.schema.JsonSchema` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `com.networknt.schema.JsonSchema` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `createExecutionContext` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `ExecutionContext` value returning from the Java mapping.
    public function createExecutionContext() returns ExecutionContext {
        handle externalObj = com_networknt_schema_JsonSchema_createExecutionContext(self.jObj);
        ExecutionContext newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `equals` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(Object arg0) returns boolean {
        return com_networknt_schema_JsonSchema_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `findAncestor` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function findAncestor() returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchema_findAncestor(self.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findLexicalRoot` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function findLexicalRoot() returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchema_findLexicalRoot(self.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `findSchemaResourceRoot` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function findSchemaResourceRoot() returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchema_findSchemaResourceRoot(self.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `fromRef` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `JsonSchema` value required to map with the Java method parameter.
    # + arg1 - The `JsonNodePath` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function fromRef(JsonSchema arg0, JsonNodePath arg1) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchema_fromRef(self.jObj, arg0.jObj, arg1.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getClass` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `Class` value returning from the Java mapping.
    public function getClass() returns Class {
        handle externalObj = com_networknt_schema_JsonSchema_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getEvaluationParentSchema` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getEvaluationParentSchema() returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchema_getEvaluationParentSchema(self.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getEvaluationPath` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `JsonNodePath` value returning from the Java mapping.
    public function getEvaluationPath() returns JsonNodePath {
        handle externalObj = com_networknt_schema_JsonSchema_getEvaluationPath(self.jObj);
        JsonNodePath newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getId` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getId() returns string {
        return java:toString(com_networknt_schema_JsonSchema_getId(self.jObj)) ?: "";
    }

    # The function that maps to the `getKeyword` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getKeyword() returns string {
        return java:toString(com_networknt_schema_JsonSchema_getKeyword(self.jObj)) ?: "";
    }

    # The function that maps to the `getParentSchema` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getParentSchema() returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchema_getParentSchema(self.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getRefSchema` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `JsonNodePath` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getRefSchema(JsonNodePath arg0) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchema_getRefSchema(self.jObj, arg0.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getRefSchemaNode` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `JsonNode` value returning from the Java mapping.
    public function getRefSchemaNode(string arg0) returns JsonNode {
        handle externalObj = com_networknt_schema_JsonSchema_getRefSchemaNode(self.jObj, java:fromString(arg0));
        JsonNode newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchemaLocation` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `SchemaLocation` value returning from the Java mapping.
    public function getSchemaLocation() returns SchemaLocation {
        handle externalObj = com_networknt_schema_JsonSchema_getSchemaLocation(self.jObj);
        SchemaLocation newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSchemaNode` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `JsonNode` value returning from the Java mapping.
    public function getSchemaNode() returns JsonNode {
        handle externalObj = com_networknt_schema_JsonSchema_getSchemaNode(self.jObj);
        JsonNode newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getSubSchema` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `JsonNodePath` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function getSubSchema(JsonNodePath arg0) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchema_getSubSchema(self.jObj, arg0.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getTypeValidator` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `TypeValidator` value returning from the Java mapping.
    public function getTypeValidator() returns TypeValidator {
        handle externalObj = com_networknt_schema_JsonSchema_getTypeValidator(self.jObj);
        TypeValidator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getValidationContext` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `ValidationContext` value returning from the Java mapping.
    public function getValidationContext() returns ValidationContext {
        handle externalObj = com_networknt_schema_JsonSchema_getValidationContext(self.jObj);
        ValidationContext newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getValidators` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `List` value returning from the Java mapping.
    public function getValidators() returns List {
        handle externalObj = com_networknt_schema_JsonSchema_getValidators(self.jObj);
        List newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hasTypeValidator` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public function hasTypeValidator() returns boolean {
        return com_networknt_schema_JsonSchema_hasTypeValidator(self.jObj);
    }

    # The function that maps to the `hashCode` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return com_networknt_schema_JsonSchema_hashCode(self.jObj);
    }

    # The function that maps to the `initializeValidators` method of `com.networknt.schema.JsonSchema`.
    public function initializeValidators() {
        com_networknt_schema_JsonSchema_initializeValidators(self.jObj);
    }

    # The function that maps to the `isRecursiveAnchor` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public function isRecursiveAnchor() returns boolean {
        return com_networknt_schema_JsonSchema_isRecursiveAnchor(self.jObj);
    }

    # The function that maps to the `isSchemaResourceRoot` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public function isSchemaResourceRoot() returns boolean {
        return com_networknt_schema_JsonSchema_isSchemaResourceRoot(self.jObj);
    }

    # The function that maps to the `notify` method of `com.networknt.schema.JsonSchema`.
    public function notify() {
        com_networknt_schema_JsonSchema_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `com.networknt.schema.JsonSchema`.
    public function notifyAll() {
        com_networknt_schema_JsonSchema_notifyAll(self.jObj);
    }

    # The function that maps to the `preloadJsonSchema` method of `com.networknt.schema.JsonSchema`.
    public function preloadJsonSchema() {
        com_networknt_schema_JsonSchema_preloadJsonSchema(self.jObj);
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + return - The `Set` value returning from the Java mapping.
    public function validate(ExecutionContext arg0, JsonNode arg1) returns Set {
        handle externalObj = com_networknt_schema_JsonSchema_validate(self.jObj, arg0.jObj, arg1.jObj);
        Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `JsonNode` value required to map with the Java method parameter.
    # + arg1 - The `OutputFormat` value required to map with the Java method parameter.
    # + arg2 - The `ExecutionContextCustomizer` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function validate10(JsonNode arg0, OutputFormat arg1, ExecutionContextCustomizer arg2) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_validate10(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `InputFormat` value required to map with the Java method parameter.
    # + return - The `Set` value returning from the Java mapping.
    public isolated function validate11(string arg0, InputFormat arg1) returns Set {
        handle externalObj = com_networknt_schema_JsonSchema_validate11(self.jObj, java:fromString(arg0), arg1.jObj);
        Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `InputFormat` value required to map with the Java method parameter.
    # + arg2 - The `Consumer` value required to map with the Java method parameter.
    # + return - The `Set` value returning from the Java mapping.
    public function validate12(string arg0, InputFormat arg1, Consumer arg2) returns Set {
        handle externalObj = com_networknt_schema_JsonSchema_validate12(self.jObj, java:fromString(arg0), arg1.jObj, arg2.jObj);
        Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `InputFormat` value required to map with the Java method parameter.
    # + arg2 - The `ExecutionContextCustomizer` value required to map with the Java method parameter.
    # + return - The `Set` value returning from the Java mapping.
    public function validate13(string arg0, InputFormat arg1, ExecutionContextCustomizer arg2) returns Set {
        handle externalObj = com_networknt_schema_JsonSchema_validate13(self.jObj, java:fromString(arg0), arg1.jObj, arg2.jObj);
        Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `InputFormat` value required to map with the Java method parameter.
    # + arg2 - The `OutputFormat` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function validate14(string arg0, InputFormat arg1, OutputFormat arg2) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_validate14(self.jObj, java:fromString(arg0), arg1.jObj, arg2.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `InputFormat` value required to map with the Java method parameter.
    # + arg2 - The `OutputFormat` value required to map with the Java method parameter.
    # + arg3 - The `Consumer` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function validate15(string arg0, InputFormat arg1, OutputFormat arg2, Consumer arg3) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_validate15(self.jObj, java:fromString(arg0), arg1.jObj, arg2.jObj, arg3.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `InputFormat` value required to map with the Java method parameter.
    # + arg2 - The `OutputFormat` value required to map with the Java method parameter.
    # + arg3 - The `ExecutionContextCustomizer` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function validate16(string arg0, InputFormat arg1, OutputFormat arg2, ExecutionContextCustomizer arg3) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_validate16(self.jObj, java:fromString(arg0), arg1.jObj, arg2.jObj, arg3.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `JsonNode` value required to map with the Java method parameter.
    # + arg3 - The `JsonNodePath` value required to map with the Java method parameter.
    # + return - The `Set` value returning from the Java mapping.
    public function validate2(ExecutionContext arg0, JsonNode arg1, JsonNode arg2, JsonNodePath arg3) returns Set {
        handle externalObj = com_networknt_schema_JsonSchema_validate2(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj, arg3.jObj);
        Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `OutputFormat` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function validate3(ExecutionContext arg0, JsonNode arg1, OutputFormat arg2) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_validate3(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `OutputFormat` value required to map with the Java method parameter.
    # + arg3 - The `ExecutionContextCustomizer` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function validate4(ExecutionContext arg0, JsonNode arg1, OutputFormat arg2, ExecutionContextCustomizer arg3) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_validate4(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj, arg3.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `JsonNode` value required to map with the Java method parameter.
    # + return - The `Set` value returning from the Java mapping.
    public function validate5(JsonNode arg0) returns Set {
        handle externalObj = com_networknt_schema_JsonSchema_validate5(self.jObj, arg0.jObj);
        Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `JsonNode` value required to map with the Java method parameter.
    # + arg1 - The `Consumer` value required to map with the Java method parameter.
    # + return - The `Set` value returning from the Java mapping.
    public function validate6(JsonNode arg0, Consumer arg1) returns Set {
        handle externalObj = com_networknt_schema_JsonSchema_validate6(self.jObj, arg0.jObj, arg1.jObj);
        Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `JsonNode` value required to map with the Java method parameter.
    # + arg1 - The `ExecutionContextCustomizer` value required to map with the Java method parameter.
    # + return - The `Set` value returning from the Java mapping.
    public function validate7(JsonNode arg0, ExecutionContextCustomizer arg1) returns Set {
        handle externalObj = com_networknt_schema_JsonSchema_validate7(self.jObj, arg0.jObj, arg1.jObj);
        Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `JsonNode` value required to map with the Java method parameter.
    # + arg1 - The `OutputFormat` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function validate8(JsonNode arg0, OutputFormat arg1) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_validate8(self.jObj, arg0.jObj, arg1.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validate` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `JsonNode` value required to map with the Java method parameter.
    # + arg1 - The `OutputFormat` value required to map with the Java method parameter.
    # + arg2 - The `Consumer` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function validate9(JsonNode arg0, OutputFormat arg1, Consumer arg2) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_validate9(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validateAndCollect` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + return - The `ValidationResult` value returning from the Java mapping.
    public function validateAndCollect(ExecutionContext arg0, JsonNode arg1) returns ValidationResult {
        handle externalObj = com_networknt_schema_JsonSchema_validateAndCollect(self.jObj, arg0.jObj, arg1.jObj);
        ValidationResult newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `validateAndCollect` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `JsonNode` value required to map with the Java method parameter.
    # + return - The `ValidationResult` value returning from the Java mapping.
    public function validateAndCollect2(JsonNode arg0) returns ValidationResult {
        handle externalObj = com_networknt_schema_JsonSchema_validateAndCollect2(self.jObj, arg0.jObj);
        ValidationResult newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `wait` method of `com.networknt.schema.JsonSchema`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function 'wait() returns InterruptedException? {
        error|() externalObj = com_networknt_schema_JsonSchema_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_JsonSchema_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = com_networknt_schema_JsonSchema_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `JsonNode` value required to map with the Java method parameter.
    # + arg3 - The `JsonNodePath` value required to map with the Java method parameter.
    # + arg4 - The `boolean` value required to map with the Java method parameter.
    # + return - The `Set` value returning from the Java mapping.
    public function walk(ExecutionContext arg0, JsonNode arg1, JsonNode arg2, JsonNodePath arg3, boolean arg4) returns Set {
        handle externalObj = com_networknt_schema_JsonSchema_walk(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj, arg3.jObj, arg4);
        Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `string` value required to map with the Java method parameter.
    # + arg2 - The `InputFormat` value required to map with the Java method parameter.
    # + arg3 - The `OutputFormat` value required to map with the Java method parameter.
    # + arg4 - The `boolean` value required to map with the Java method parameter.
    # + arg5 - The `ExecutionContextCustomizer` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function walk10(ExecutionContext arg0, string arg1, InputFormat arg2, OutputFormat arg3, boolean arg4, ExecutionContextCustomizer arg5) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_walk10(self.jObj, arg0.jObj, java:fromString(arg1), arg2.jObj, arg3.jObj, arg4, arg5.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `JsonNode` value required to map with the Java method parameter.
    # + arg1 - The `boolean` value required to map with the Java method parameter.
    # + return - The `ValidationResult` value returning from the Java mapping.
    public function walk11(JsonNode arg0, boolean arg1) returns ValidationResult {
        handle externalObj = com_networknt_schema_JsonSchema_walk11(self.jObj, arg0.jObj, arg1);
        ValidationResult newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `JsonNode` value required to map with the Java method parameter.
    # + arg1 - The `OutputFormat` value required to map with the Java method parameter.
    # + arg2 - The `boolean` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function walk12(JsonNode arg0, OutputFormat arg1, boolean arg2) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_walk12(self.jObj, arg0.jObj, arg1.jObj, arg2);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `InputFormat` value required to map with the Java method parameter.
    # + arg2 - The `boolean` value required to map with the Java method parameter.
    # + return - The `ValidationResult` value returning from the Java mapping.
    public function walk13(string arg0, InputFormat arg1, boolean arg2) returns ValidationResult {
        handle externalObj = com_networknt_schema_JsonSchema_walk13(self.jObj, java:fromString(arg0), arg1.jObj, arg2);
        ValidationResult newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `InputFormat` value required to map with the Java method parameter.
    # + arg2 - The `boolean` value required to map with the Java method parameter.
    # + arg3 - The `Consumer` value required to map with the Java method parameter.
    # + return - The `ValidationResult` value returning from the Java mapping.
    public function walk14(string arg0, InputFormat arg1, boolean arg2, Consumer arg3) returns ValidationResult {
        handle externalObj = com_networknt_schema_JsonSchema_walk14(self.jObj, java:fromString(arg0), arg1.jObj, arg2, arg3.jObj);
        ValidationResult newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `InputFormat` value required to map with the Java method parameter.
    # + arg2 - The `boolean` value required to map with the Java method parameter.
    # + arg3 - The `ExecutionContextCustomizer` value required to map with the Java method parameter.
    # + return - The `ValidationResult` value returning from the Java mapping.
    public function walk15(string arg0, InputFormat arg1, boolean arg2, ExecutionContextCustomizer arg3) returns ValidationResult {
        handle externalObj = com_networknt_schema_JsonSchema_walk15(self.jObj, java:fromString(arg0), arg1.jObj, arg2, arg3.jObj);
        ValidationResult newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `boolean` value required to map with the Java method parameter.
    # + return - The `ValidationResult` value returning from the Java mapping.
    public function walk2(ExecutionContext arg0, JsonNode arg1, boolean arg2) returns ValidationResult {
        handle externalObj = com_networknt_schema_JsonSchema_walk2(self.jObj, arg0.jObj, arg1.jObj, arg2);
        ValidationResult newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `boolean` value required to map with the Java method parameter.
    # + arg3 - The `Consumer` value required to map with the Java method parameter.
    # + return - The `ValidationResult` value returning from the Java mapping.
    public function walk3(ExecutionContext arg0, JsonNode arg1, boolean arg2, Consumer arg3) returns ValidationResult {
        handle externalObj = com_networknt_schema_JsonSchema_walk3(self.jObj, arg0.jObj, arg1.jObj, arg2, arg3.jObj);
        ValidationResult newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `boolean` value required to map with the Java method parameter.
    # + arg3 - The `ExecutionContextCustomizer` value required to map with the Java method parameter.
    # + return - The `ValidationResult` value returning from the Java mapping.
    public function walk4(ExecutionContext arg0, JsonNode arg1, boolean arg2, ExecutionContextCustomizer arg3) returns ValidationResult {
        handle externalObj = com_networknt_schema_JsonSchema_walk4(self.jObj, arg0.jObj, arg1.jObj, arg2, arg3.jObj);
        ValidationResult newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `OutputFormat` value required to map with the Java method parameter.
    # + arg3 - The `boolean` value required to map with the Java method parameter.
    # + arg4 - The `Consumer` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function walk5(ExecutionContext arg0, JsonNode arg1, OutputFormat arg2, boolean arg3, Consumer arg4) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_walk5(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj, arg3, arg4.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `OutputFormat` value required to map with the Java method parameter.
    # + arg3 - The `boolean` value required to map with the Java method parameter.
    # + arg4 - The `ExecutionContextCustomizer` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function walk6(ExecutionContext arg0, JsonNode arg1, OutputFormat arg2, boolean arg3, ExecutionContextCustomizer arg4) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_walk6(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj, arg3, arg4.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `string` value required to map with the Java method parameter.
    # + arg2 - The `InputFormat` value required to map with the Java method parameter.
    # + arg3 - The `boolean` value required to map with the Java method parameter.
    # + return - The `ValidationResult` value returning from the Java mapping.
    public function walk7(ExecutionContext arg0, string arg1, InputFormat arg2, boolean arg3) returns ValidationResult {
        handle externalObj = com_networknt_schema_JsonSchema_walk7(self.jObj, arg0.jObj, java:fromString(arg1), arg2.jObj, arg3);
        ValidationResult newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `string` value required to map with the Java method parameter.
    # + arg2 - The `InputFormat` value required to map with the Java method parameter.
    # + arg3 - The `boolean` value required to map with the Java method parameter.
    # + arg4 - The `ExecutionContextCustomizer` value required to map with the Java method parameter.
    # + return - The `ValidationResult` value returning from the Java mapping.
    public function walk8(ExecutionContext arg0, string arg1, InputFormat arg2, boolean arg3, ExecutionContextCustomizer arg4) returns ValidationResult {
        handle externalObj = com_networknt_schema_JsonSchema_walk8(self.jObj, arg0.jObj, java:fromString(arg1), arg2.jObj, arg3, arg4.jObj);
        ValidationResult newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walk` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `string` value required to map with the Java method parameter.
    # + arg2 - The `InputFormat` value required to map with the Java method parameter.
    # + arg3 - The `OutputFormat` value required to map with the Java method parameter.
    # + arg4 - The `boolean` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    public function walk9(ExecutionContext arg0, string arg1, InputFormat arg2, OutputFormat arg3, boolean arg4) returns Object {
        handle externalObj = com_networknt_schema_JsonSchema_walk9(self.jObj, arg0.jObj, java:fromString(arg1), arg2.jObj, arg3.jObj, arg4);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `walkAtNode` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `ExecutionContext` value required to map with the Java method parameter.
    # + arg1 - The `JsonNode` value required to map with the Java method parameter.
    # + arg2 - The `JsonNode` value required to map with the Java method parameter.
    # + arg3 - The `JsonNodePath` value required to map with the Java method parameter.
    # + arg4 - The `boolean` value required to map with the Java method parameter.
    # + return - The `ValidationResult` value returning from the Java mapping.
    public function walkAtNode(ExecutionContext arg0, JsonNode arg1, JsonNode arg2, JsonNodePath arg3, boolean arg4) returns ValidationResult {
        handle externalObj = com_networknt_schema_JsonSchema_walkAtNode(self.jObj, arg0.jObj, arg1.jObj, arg2.jObj, arg3.jObj, arg4);
        ValidationResult newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `withConfig` method of `com.networknt.schema.JsonSchema`.
    #
    # + arg0 - The `SchemaValidatorsConfig` value required to map with the Java method parameter.
    # + return - The `JsonSchema` value returning from the Java mapping.
    public function withConfig(SchemaValidatorsConfig arg0) returns JsonSchema {
        handle externalObj = com_networknt_schema_JsonSchema_withConfig(self.jObj, arg0.jObj);
        JsonSchema newObj = new (externalObj);
        return newObj;
    }

}

# The function that maps to the `debug` method of `com.networknt.schema.JsonSchema`.
#
# + arg0 - The `Logger` value required to map with the Java method parameter.
# + arg1 - The `ExecutionContext` value required to map with the Java method parameter.
# + arg2 - The `JsonNode` value required to map with the Java method parameter.
# + arg3 - The `JsonNode` value required to map with the Java method parameter.
# + arg4 - The `JsonNodePath` value required to map with the Java method parameter.
public function JsonSchema_debug(Logger arg0, ExecutionContext arg1, JsonNode arg2, JsonNode arg3, JsonNodePath arg4) {
    com_networknt_schema_JsonSchema_debug(arg0.jObj, arg1.jObj, arg2.jObj, arg3.jObj, arg4.jObj);
}

function com_networknt_schema_JsonSchema_createExecutionContext(handle receiver) returns handle = @java:Method {
    name: "createExecutionContext",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_debug(handle arg0, handle arg1, handle arg2, handle arg3, handle arg4) = @java:Method {
    name: "debug",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["org.slf4j.Logger", "com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.JsonNodePath"]
} external;

function com_networknt_schema_JsonSchema_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["java.lang.Object"]
} external;

function com_networknt_schema_JsonSchema_findAncestor(handle receiver) returns handle = @java:Method {
    name: "findAncestor",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_findLexicalRoot(handle receiver) returns handle = @java:Method {
    name: "findLexicalRoot",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_findSchemaResourceRoot(handle receiver) returns handle = @java:Method {
    name: "findSchemaResourceRoot",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_fromRef(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "fromRef",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.JsonSchema", "com.networknt.schema.JsonNodePath"]
} external;

function com_networknt_schema_JsonSchema_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_getEvaluationParentSchema(handle receiver) returns handle = @java:Method {
    name: "getEvaluationParentSchema",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_getEvaluationPath(handle receiver) returns handle = @java:Method {
    name: "getEvaluationPath",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_getId(handle receiver) returns handle = @java:Method {
    name: "getId",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_getKeyword(handle receiver) returns handle = @java:Method {
    name: "getKeyword",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_getParentSchema(handle receiver) returns handle = @java:Method {
    name: "getParentSchema",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_getRefSchema(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getRefSchema",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.JsonNodePath"]
} external;

function com_networknt_schema_JsonSchema_getRefSchemaNode(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getRefSchemaNode",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["java.lang.String"]
} external;

function com_networknt_schema_JsonSchema_getSchemaLocation(handle receiver) returns handle = @java:Method {
    name: "getSchemaLocation",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_getSchemaNode(handle receiver) returns handle = @java:Method {
    name: "getSchemaNode",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_getSubSchema(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getSubSchema",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.JsonNodePath"]
} external;

function com_networknt_schema_JsonSchema_getTypeValidator(handle receiver) returns handle = @java:Method {
    name: "getTypeValidator",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_getValidationContext(handle receiver) returns handle = @java:Method {
    name: "getValidationContext",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_getValidators(handle receiver) returns handle = @java:Method {
    name: "getValidators",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_hasTypeValidator(handle receiver) returns boolean = @java:Method {
    name: "hasTypeValidator",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_initializeValidators(handle receiver) = @java:Method {
    name: "initializeValidators",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_isRecursiveAnchor(handle receiver) returns boolean = @java:Method {
    name: "isRecursiveAnchor",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_isSchemaResourceRoot(handle receiver) returns boolean = @java:Method {
    name: "isSchemaResourceRoot",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_preloadJsonSchema(handle receiver) = @java:Method {
    name: "preloadJsonSchema",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_validate(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode"]
} external;

function com_networknt_schema_JsonSchema_validate10(handle receiver, handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.OutputFormat", "com.networknt.schema.ExecutionContextCustomizer"]
} external;

isolated function com_networknt_schema_JsonSchema_validate11(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["java.lang.String", "com.networknt.schema.InputFormat"]
} external;

function com_networknt_schema_JsonSchema_validate12(handle receiver, handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["java.lang.String", "com.networknt.schema.InputFormat", "java.util.function.Consumer"]
} external;

function com_networknt_schema_JsonSchema_validate13(handle receiver, handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["java.lang.String", "com.networknt.schema.InputFormat", "com.networknt.schema.ExecutionContextCustomizer"]
} external;

function com_networknt_schema_JsonSchema_validate14(handle receiver, handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["java.lang.String", "com.networknt.schema.InputFormat", "com.networknt.schema.OutputFormat"]
} external;

function com_networknt_schema_JsonSchema_validate15(handle receiver, handle arg0, handle arg1, handle arg2, handle arg3) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["java.lang.String", "com.networknt.schema.InputFormat", "com.networknt.schema.OutputFormat", "java.util.function.Consumer"]
} external;

function com_networknt_schema_JsonSchema_validate16(handle receiver, handle arg0, handle arg1, handle arg2, handle arg3) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["java.lang.String", "com.networknt.schema.InputFormat", "com.networknt.schema.OutputFormat", "com.networknt.schema.ExecutionContextCustomizer"]
} external;

function com_networknt_schema_JsonSchema_validate2(handle receiver, handle arg0, handle arg1, handle arg2, handle arg3) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.JsonNodePath"]
} external;

function com_networknt_schema_JsonSchema_validate3(handle receiver, handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.OutputFormat"]
} external;

function com_networknt_schema_JsonSchema_validate4(handle receiver, handle arg0, handle arg1, handle arg2, handle arg3) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.OutputFormat", "com.networknt.schema.ExecutionContextCustomizer"]
} external;

function com_networknt_schema_JsonSchema_validate5(handle receiver, handle arg0) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.fasterxml.jackson.databind.JsonNode"]
} external;

function com_networknt_schema_JsonSchema_validate6(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.fasterxml.jackson.databind.JsonNode", "java.util.function.Consumer"]
} external;

function com_networknt_schema_JsonSchema_validate7(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.ExecutionContextCustomizer"]
} external;

function com_networknt_schema_JsonSchema_validate8(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.OutputFormat"]
} external;

function com_networknt_schema_JsonSchema_validate9(handle receiver, handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "validate",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.OutputFormat", "java.util.function.Consumer"]
} external;

function com_networknt_schema_JsonSchema_validateAndCollect(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "validateAndCollect",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode"]
} external;

function com_networknt_schema_JsonSchema_validateAndCollect2(handle receiver, handle arg0) returns handle = @java:Method {
    name: "validateAndCollect",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.fasterxml.jackson.databind.JsonNode"]
} external;

function com_networknt_schema_JsonSchema_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: []
} external;

function com_networknt_schema_JsonSchema_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["long"]
} external;

function com_networknt_schema_JsonSchema_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["long", "int"]
} external;

function com_networknt_schema_JsonSchema_walk(handle receiver, handle arg0, handle arg1, handle arg2, handle arg3, boolean arg4) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.JsonNodePath", "boolean"]
} external;

function com_networknt_schema_JsonSchema_walk10(handle receiver, handle arg0, handle arg1, handle arg2, handle arg3, boolean arg4, handle arg5) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "java.lang.String", "com.networknt.schema.InputFormat", "com.networknt.schema.OutputFormat", "boolean", "com.networknt.schema.ExecutionContextCustomizer"]
} external;

function com_networknt_schema_JsonSchema_walk11(handle receiver, handle arg0, boolean arg1) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.fasterxml.jackson.databind.JsonNode", "boolean"]
} external;

function com_networknt_schema_JsonSchema_walk12(handle receiver, handle arg0, handle arg1, boolean arg2) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.OutputFormat", "boolean"]
} external;

function com_networknt_schema_JsonSchema_walk13(handle receiver, handle arg0, handle arg1, boolean arg2) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["java.lang.String", "com.networknt.schema.InputFormat", "boolean"]
} external;

function com_networknt_schema_JsonSchema_walk14(handle receiver, handle arg0, handle arg1, boolean arg2, handle arg3) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["java.lang.String", "com.networknt.schema.InputFormat", "boolean", "java.util.function.Consumer"]
} external;

function com_networknt_schema_JsonSchema_walk15(handle receiver, handle arg0, handle arg1, boolean arg2, handle arg3) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["java.lang.String", "com.networknt.schema.InputFormat", "boolean", "com.networknt.schema.ExecutionContextCustomizer"]
} external;

function com_networknt_schema_JsonSchema_walk2(handle receiver, handle arg0, handle arg1, boolean arg2) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "boolean"]
} external;

function com_networknt_schema_JsonSchema_walk3(handle receiver, handle arg0, handle arg1, boolean arg2, handle arg3) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "boolean", "java.util.function.Consumer"]
} external;

function com_networknt_schema_JsonSchema_walk4(handle receiver, handle arg0, handle arg1, boolean arg2, handle arg3) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "boolean", "com.networknt.schema.ExecutionContextCustomizer"]
} external;

function com_networknt_schema_JsonSchema_walk5(handle receiver, handle arg0, handle arg1, handle arg2, boolean arg3, handle arg4) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.OutputFormat", "boolean", "java.util.function.Consumer"]
} external;

function com_networknt_schema_JsonSchema_walk6(handle receiver, handle arg0, handle arg1, handle arg2, boolean arg3, handle arg4) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.OutputFormat", "boolean", "com.networknt.schema.ExecutionContextCustomizer"]
} external;

function com_networknt_schema_JsonSchema_walk7(handle receiver, handle arg0, handle arg1, handle arg2, boolean arg3) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "java.lang.String", "com.networknt.schema.InputFormat", "boolean"]
} external;

function com_networknt_schema_JsonSchema_walk8(handle receiver, handle arg0, handle arg1, handle arg2, boolean arg3, handle arg4) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "java.lang.String", "com.networknt.schema.InputFormat", "boolean", "com.networknt.schema.ExecutionContextCustomizer"]
} external;

function com_networknt_schema_JsonSchema_walk9(handle receiver, handle arg0, handle arg1, handle arg2, handle arg3, boolean arg4) returns handle = @java:Method {
    name: "walk",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "java.lang.String", "com.networknt.schema.InputFormat", "com.networknt.schema.OutputFormat", "boolean"]
} external;

function com_networknt_schema_JsonSchema_walkAtNode(handle receiver, handle arg0, handle arg1, handle arg2, handle arg3, boolean arg4) returns handle = @java:Method {
    name: "walkAtNode",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.ExecutionContext", "com.fasterxml.jackson.databind.JsonNode", "com.fasterxml.jackson.databind.JsonNode", "com.networknt.schema.JsonNodePath", "boolean"]
} external;

function com_networknt_schema_JsonSchema_withConfig(handle receiver, handle arg0) returns handle = @java:Method {
    name: "withConfig",
    'class: "com.networknt.schema.JsonSchema",
    paramTypes: ["com.networknt.schema.SchemaValidatorsConfig"]
} external;

