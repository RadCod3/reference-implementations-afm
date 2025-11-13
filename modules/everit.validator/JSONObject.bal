import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

# Ballerina class mapping for the Java `org.json.JSONObject` class.
@java:Binding {'class: "org.json.JSONObject"}
public isolated distinct class JSONObject {

    *java:JObject;
    *Object;

    # The `handle` field that stores the reference to the `org.json.JSONObject` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `org.json.JSONObject` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `org.json.JSONObject` Java class.
    #
    # + return - The `string` form of the Java object instance.
    isolated function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `accumulate` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Object` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function accumulate(string arg0, Object arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_accumulate(self.jObj, java:fromString(arg0), arg1.jObj);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `append` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Object` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function append(string arg0, Object arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_append(self.jObj, java:fromString(arg0), arg1.jObj);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `clear` method of `org.json.JSONObject`.
    function clear() {
        org_json_JSONObject_clear(self.jObj);
    }

    # The function that maps to the `equals` method of `org.json.JSONObject`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function 'equals(Object arg0) returns boolean {
        return org_json_JSONObject_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `get` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    function get(string arg0) returns Object {
        handle externalObj = org_json_JSONObject_get(self.jObj, java:fromString(arg0));
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getBigDecimal` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `BigDecimal` value returning from the Java mapping.
    function getBigDecimal(string arg0) returns BigDecimal {
        handle externalObj = org_json_JSONObject_getBigDecimal(self.jObj, java:fromString(arg0));
        BigDecimal newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getBigInteger` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `BigInteger` value returning from the Java mapping.
    function getBigInteger(string arg0) returns BigInteger {
        handle externalObj = org_json_JSONObject_getBigInteger(self.jObj, java:fromString(arg0));
        BigInteger newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getBoolean` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function getBoolean(string arg0) returns boolean {
        return org_json_JSONObject_getBoolean(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `getClass` method of `org.json.JSONObject`.
    #
    # + return - The `Class` value returning from the Java mapping.
    function getClass() returns Class {
        handle externalObj = org_json_JSONObject_getClass(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getDouble` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `float` value returning from the Java mapping.
    function getDouble(string arg0) returns float {
        return org_json_JSONObject_getDouble(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `getEnum` method of `org.json.JSONObject`.
    #
    # + arg0 - The `Class` value required to map with the Java method parameter.
    # + arg1 - The `string` value required to map with the Java method parameter.
    # + return - The `Enum` value returning from the Java mapping.
    function getEnum(Class arg0, string arg1) returns Enum {
        handle externalObj = org_json_JSONObject_getEnum(self.jObj, arg0.jObj, java:fromString(arg1));
        Enum newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getFloat` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `float` value returning from the Java mapping.
    function getFloat(string arg0) returns float {
        return org_json_JSONObject_getFloat(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `getInt` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    function getInt(string arg0) returns int {
        return org_json_JSONObject_getInt(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `getJSONArray` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `JSONArray` value returning from the Java mapping.
    function getJSONArray(string arg0) returns JSONArray {
        handle externalObj = org_json_JSONObject_getJSONArray(self.jObj, java:fromString(arg0));
        JSONArray newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getJSONObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function getJSONObject(string arg0) returns JSONObject {
        handle externalObj = org_json_JSONObject_getJSONObject(self.jObj, java:fromString(arg0));
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getLong` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    function getLong(string arg0) returns int {
        return org_json_JSONObject_getLong(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `getMapType` method of `org.json.JSONObject`.
    #
    # + return - The `Class` value returning from the Java mapping.
    function getMapType() returns Class {
        handle externalObj = org_json_JSONObject_getMapType(self.jObj);
        Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getNumber` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Number` value returning from the Java mapping.
    function getNumber(string arg0) returns Number {
        handle externalObj = org_json_JSONObject_getNumber(self.jObj, java:fromString(arg0));
        Number newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getString` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    function getString(string arg0) returns string {
        return java:toString(org_json_JSONObject_getString(self.jObj, java:fromString(arg0))) ?: "";
    }

    # The function that maps to the `has` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function has(string arg0) returns boolean {
        return org_json_JSONObject_has(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `hashCode` method of `org.json.JSONObject`.
    #
    # + return - The `int` value returning from the Java mapping.
    function hashCode() returns int {
        return org_json_JSONObject_hashCode(self.jObj);
    }

    # The function that maps to the `increment` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function increment(string arg0) returns JSONObject {
        handle externalObj = org_json_JSONObject_increment(self.jObj, java:fromString(arg0));
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `isEmpty` method of `org.json.JSONObject`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    function isEmpty() returns boolean {
        return org_json_JSONObject_isEmpty(self.jObj);
    }

    # The function that maps to the `isNull` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function isNull(string arg0) returns boolean {
        return org_json_JSONObject_isNull(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `keySet` method of `org.json.JSONObject`.
    #
    # + return - The `Set` value returning from the Java mapping.
    function keySet() returns Set {
        handle externalObj = org_json_JSONObject_keySet(self.jObj);
        Set newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `keys` method of `org.json.JSONObject`.
    #
    # + return - The `Iterator` value returning from the Java mapping.
    function keys() returns Iterator {
        handle externalObj = org_json_JSONObject_keys(self.jObj);
        Iterator newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `length` method of `org.json.JSONObject`.
    #
    # + return - The `int` value returning from the Java mapping.
    function length() returns int {
        return org_json_JSONObject_length(self.jObj);
    }

    # The function that maps to the `names` method of `org.json.JSONObject`.
    #
    # + return - The `JSONArray` value returning from the Java mapping.
    function names() returns JSONArray {
        handle externalObj = org_json_JSONObject_names(self.jObj);
        JSONArray newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `notify` method of `org.json.JSONObject`.
    function notify() {
        org_json_JSONObject_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `org.json.JSONObject`.
    function notifyAll() {
        org_json_JSONObject_notifyAll(self.jObj);
    }

    # The function that maps to the `opt` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    function opt(string arg0) returns Object {
        handle externalObj = org_json_JSONObject_opt(self.jObj, java:fromString(arg0));
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optBigDecimal` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `BigDecimal` value required to map with the Java method parameter.
    # + return - The `BigDecimal` value returning from the Java mapping.
    function optBigDecimal(string arg0, BigDecimal arg1) returns BigDecimal {
        handle externalObj = org_json_JSONObject_optBigDecimal(self.jObj, java:fromString(arg0), arg1.jObj);
        BigDecimal newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optBigInteger` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `BigInteger` value required to map with the Java method parameter.
    # + return - The `BigInteger` value returning from the Java mapping.
    function optBigInteger(string arg0, BigInteger arg1) returns BigInteger {
        handle externalObj = org_json_JSONObject_optBigInteger(self.jObj, java:fromString(arg0), arg1.jObj);
        BigInteger newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optBoolean` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function optBoolean(string arg0) returns boolean {
        return org_json_JSONObject_optBoolean(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `optBoolean` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `boolean` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function optBoolean2(string arg0, boolean arg1) returns boolean {
        return org_json_JSONObject_optBoolean2(self.jObj, java:fromString(arg0), arg1);
    }

    # The function that maps to the `optBooleanObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Boolean` value returning from the Java mapping.
    function optBooleanObject(string arg0) returns Boolean {
        handle externalObj = org_json_JSONObject_optBooleanObject(self.jObj, java:fromString(arg0));
        Boolean newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optBooleanObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Boolean` value required to map with the Java method parameter.
    # + return - The `Boolean` value returning from the Java mapping.
    function optBooleanObject2(string arg0, Boolean arg1) returns Boolean {
        handle externalObj = org_json_JSONObject_optBooleanObject2(self.jObj, java:fromString(arg0), arg1.jObj);
        Boolean newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optDouble` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `float` value returning from the Java mapping.
    function optDouble(string arg0) returns float {
        return org_json_JSONObject_optDouble(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `optDouble` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `float` value required to map with the Java method parameter.
    # + return - The `float` value returning from the Java mapping.
    function optDouble2(string arg0, float arg1) returns float {
        return org_json_JSONObject_optDouble2(self.jObj, java:fromString(arg0), arg1);
    }

    # The function that maps to the `optDoubleObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Double` value returning from the Java mapping.
    function optDoubleObject(string arg0) returns Double {
        handle externalObj = org_json_JSONObject_optDoubleObject(self.jObj, java:fromString(arg0));
        Double newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optDoubleObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Double` value required to map with the Java method parameter.
    # + return - The `Double` value returning from the Java mapping.
    function optDoubleObject2(string arg0, Double arg1) returns Double {
        handle externalObj = org_json_JSONObject_optDoubleObject2(self.jObj, java:fromString(arg0), arg1.jObj);
        Double newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optEnum` method of `org.json.JSONObject`.
    #
    # + arg0 - The `Class` value required to map with the Java method parameter.
    # + arg1 - The `string` value required to map with the Java method parameter.
    # + return - The `Enum` value returning from the Java mapping.
    function optEnum(Class arg0, string arg1) returns Enum {
        handle externalObj = org_json_JSONObject_optEnum(self.jObj, arg0.jObj, java:fromString(arg1));
        Enum newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optEnum` method of `org.json.JSONObject`.
    #
    # + arg0 - The `Class` value required to map with the Java method parameter.
    # + arg1 - The `string` value required to map with the Java method parameter.
    # + arg2 - The `Enum` value required to map with the Java method parameter.
    # + return - The `Enum` value returning from the Java mapping.
    function optEnum2(Class arg0, string arg1, Enum arg2) returns Enum {
        handle externalObj = org_json_JSONObject_optEnum2(self.jObj, arg0.jObj, java:fromString(arg1), arg2.jObj);
        Enum newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optFloat` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `float` value returning from the Java mapping.
    function optFloat(string arg0) returns float {
        return org_json_JSONObject_optFloat(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `optFloat` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `float` value required to map with the Java method parameter.
    # + return - The `float` value returning from the Java mapping.
    function optFloat2(string arg0, float arg1) returns float {
        return org_json_JSONObject_optFloat2(self.jObj, java:fromString(arg0), arg1);
    }

    # The function that maps to the `optFloatObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Float` value returning from the Java mapping.
    function optFloatObject(string arg0) returns Float {
        handle externalObj = org_json_JSONObject_optFloatObject(self.jObj, java:fromString(arg0));
        Float newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optFloatObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Float` value required to map with the Java method parameter.
    # + return - The `Float` value returning from the Java mapping.
    function optFloatObject2(string arg0, Float arg1) returns Float {
        handle externalObj = org_json_JSONObject_optFloatObject2(self.jObj, java:fromString(arg0), arg1.jObj);
        Float newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optInt` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    function optInt(string arg0) returns int {
        return org_json_JSONObject_optInt(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `optInt` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    function optInt2(string arg0, int arg1) returns int {
        return org_json_JSONObject_optInt2(self.jObj, java:fromString(arg0), arg1);
    }

    # The function that maps to the `optIntegerObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Integer` value returning from the Java mapping.
    function optIntegerObject(string arg0) returns Integer {
        handle externalObj = org_json_JSONObject_optIntegerObject(self.jObj, java:fromString(arg0));
        Integer newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optIntegerObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Integer` value required to map with the Java method parameter.
    # + return - The `Integer` value returning from the Java mapping.
    function optIntegerObject2(string arg0, Integer arg1) returns Integer {
        handle externalObj = org_json_JSONObject_optIntegerObject2(self.jObj, java:fromString(arg0), arg1.jObj);
        Integer newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optJSONArray` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `JSONArray` value returning from the Java mapping.
    function optJSONArray(string arg0) returns JSONArray {
        handle externalObj = org_json_JSONObject_optJSONArray(self.jObj, java:fromString(arg0));
        JSONArray newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optJSONArray` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `JSONArray` value required to map with the Java method parameter.
    # + return - The `JSONArray` value returning from the Java mapping.
    function optJSONArray2(string arg0, JSONArray arg1) returns JSONArray {
        handle externalObj = org_json_JSONObject_optJSONArray2(self.jObj, java:fromString(arg0), arg1.jObj);
        JSONArray newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optJSONObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function optJSONObject(string arg0) returns JSONObject {
        handle externalObj = org_json_JSONObject_optJSONObject(self.jObj, java:fromString(arg0));
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optJSONObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `JSONObject` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function optJSONObject2(string arg0, JSONObject arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_optJSONObject2(self.jObj, java:fromString(arg0), arg1.jObj);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optLong` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    function optLong(string arg0) returns int {
        return org_json_JSONObject_optLong(self.jObj, java:fromString(arg0));
    }

    # The function that maps to the `optLong` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `int` value returning from the Java mapping.
    function optLong2(string arg0, int arg1) returns int {
        return org_json_JSONObject_optLong2(self.jObj, java:fromString(arg0), arg1);
    }

    # The function that maps to the `optLongObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Long` value returning from the Java mapping.
    function optLongObject(string arg0) returns Long {
        handle externalObj = org_json_JSONObject_optLongObject(self.jObj, java:fromString(arg0));
        Long newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optLongObject` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Long` value required to map with the Java method parameter.
    # + return - The `Long` value returning from the Java mapping.
    function optLongObject2(string arg0, Long arg1) returns Long {
        handle externalObj = org_json_JSONObject_optLongObject2(self.jObj, java:fromString(arg0), arg1.jObj);
        Long newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optNumber` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Number` value returning from the Java mapping.
    function optNumber(string arg0) returns Number {
        handle externalObj = org_json_JSONObject_optNumber(self.jObj, java:fromString(arg0));
        Number newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optNumber` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Number` value required to map with the Java method parameter.
    # + return - The `Number` value returning from the Java mapping.
    function optNumber2(string arg0, Number arg1) returns Number {
        handle externalObj = org_json_JSONObject_optNumber2(self.jObj, java:fromString(arg0), arg1.jObj);
        Number newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optQuery` method of `org.json.JSONObject`.
    #
    # + arg0 - The `JSONPointer` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    function optQuery(JSONPointer arg0) returns Object {
        handle externalObj = org_json_JSONObject_optQuery(self.jObj, arg0.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optQuery` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    function optQuery2(string arg0) returns Object {
        handle externalObj = org_json_JSONObject_optQuery2(self.jObj, java:fromString(arg0));
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `optString` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    function optString(string arg0) returns string {
        return java:toString(org_json_JSONObject_optString(self.jObj, java:fromString(arg0))) ?: "";
    }

    # The function that maps to the `optString` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `string` value required to map with the Java method parameter.
    # + return - The `string` value returning from the Java mapping.
    function optString2(string arg0, string arg1) returns string {
        return java:toString(org_json_JSONObject_optString2(self.jObj, java:fromString(arg0), java:fromString(arg1))) ?: "";
    }

    # The function that maps to the `put` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `boolean` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function put(string arg0, boolean arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_put(self.jObj, java:fromString(arg0), arg1);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `put` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Collection` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function put2(string arg0, Collection arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_put2(self.jObj, java:fromString(arg0), arg1.jObj);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `put` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `float` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function put3(string arg0, float arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_put3(self.jObj, java:fromString(arg0), arg1);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `put` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `float` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function put4(string arg0, float arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_put4(self.jObj, java:fromString(arg0), arg1);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `put` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function put5(string arg0, int arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_put5(self.jObj, java:fromString(arg0), arg1);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `put` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function put6(string arg0, int arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_put6(self.jObj, java:fromString(arg0), arg1);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `put` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Map` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function put7(string arg0, Map arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_put7(self.jObj, java:fromString(arg0), arg1.jObj);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `put` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Object` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function put8(string arg0, Object arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_put8(self.jObj, java:fromString(arg0), arg1.jObj);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `putOnce` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Object` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function putOnce(string arg0, Object arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_putOnce(self.jObj, java:fromString(arg0), arg1.jObj);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `putOpt` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + arg1 - The `Object` value required to map with the Java method parameter.
    # + return - The `JSONObject` value returning from the Java mapping.
    function putOpt(string arg0, Object arg1) returns JSONObject {
        handle externalObj = org_json_JSONObject_putOpt(self.jObj, java:fromString(arg0), arg1.jObj);
        JSONObject newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `query` method of `org.json.JSONObject`.
    #
    # + arg0 - The `JSONPointer` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    function query(JSONPointer arg0) returns Object {
        handle externalObj = org_json_JSONObject_query(self.jObj, arg0.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `query` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    function query2(string arg0) returns Object {
        handle externalObj = org_json_JSONObject_query2(self.jObj, java:fromString(arg0));
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `remove` method of `org.json.JSONObject`.
    #
    # + arg0 - The `string` value required to map with the Java method parameter.
    # + return - The `Object` value returning from the Java mapping.
    function remove(string arg0) returns Object {
        handle externalObj = org_json_JSONObject_remove(self.jObj, java:fromString(arg0));
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `similar` method of `org.json.JSONObject`.
    #
    # + arg0 - The `Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    function similar(Object arg0) returns boolean {
        return org_json_JSONObject_similar(self.jObj, arg0.jObj);
    }

    # The function that maps to the `toJSONArray` method of `org.json.JSONObject`.
    #
    # + arg0 - The `JSONArray` value required to map with the Java method parameter.
    # + return - The `JSONArray` value returning from the Java mapping.
    function toJSONArray(JSONArray arg0) returns JSONArray {
        handle externalObj = org_json_JSONObject_toJSONArray(self.jObj, arg0.jObj);
        JSONArray newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `toMap` method of `org.json.JSONObject`.
    #
    # + return - The `Map` value returning from the Java mapping.
    function toMap() returns Map {
        handle externalObj = org_json_JSONObject_toMap(self.jObj);
        Map newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `wait` method of `org.json.JSONObject`.
    #
    # + return - The `InterruptedException` value returning from the Java mapping.
    function 'wait() returns InterruptedException? {
        error|() externalObj = org_json_JSONObject_wait(self.jObj);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.json.JSONObject`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait2(int arg0) returns InterruptedException? {
        error|() externalObj = org_json_JSONObject_wait2(self.jObj, arg0);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `org.json.JSONObject`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `InterruptedException` value returning from the Java mapping.
    function wait3(int arg0, int arg1) returns InterruptedException? {
        error|() externalObj = org_json_JSONObject_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            InterruptedException e = error InterruptedException(INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `write` method of `org.json.JSONObject`.
    #
    # + arg0 - The `Writer` value required to map with the Java method parameter.
    # + return - The `Writer` value returning from the Java mapping.
    function write(Writer arg0) returns Writer {
        handle externalObj = org_json_JSONObject_write(self.jObj, arg0.jObj);
        Writer newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `write` method of `org.json.JSONObject`.
    #
    # + arg0 - The `Writer` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + arg2 - The `int` value required to map with the Java method parameter.
    # + return - The `Writer` value returning from the Java mapping.
    function write2(Writer arg0, int arg1, int arg2) returns Writer {
        handle externalObj = org_json_JSONObject_write2(self.jObj, arg0.jObj, arg1, arg2);
        Writer newObj = new (externalObj);
        return newObj;
    }

}

# The constructor function to generate an object of `org.json.JSONObject`.
#
# + return - The new `JSONObject` class generated.
function newJSONObject1() returns JSONObject {
    handle externalObj = org_json_JSONObject_newJSONObject1();
    JSONObject newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.json.JSONObject`.
#
# + arg0 - The `JSONObject` value required to map with the Java constructor parameter.
# + arg1 - The `string[]` value required to map with the Java constructor parameter.
# + return - The new `JSONObject` class generated.
function newJSONObject2(JSONObject arg0, string[] arg1) returns JSONObject|error {
    handle externalObj = org_json_JSONObject_newJSONObject2(arg0.jObj, check jarrays:toHandle(arg1, "java.lang.String"));
    JSONObject newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.json.JSONObject`.
#
# + arg0 - The `JSONTokener` value required to map with the Java constructor parameter.
# + return - The new `JSONObject` class generated.
function newJSONObject3(JSONTokener arg0) returns JSONObject {
    handle externalObj = org_json_JSONObject_newJSONObject3(arg0.jObj);
    JSONObject newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.json.JSONObject`.
#
# + arg0 - The `Map` value required to map with the Java constructor parameter.
# + return - The new `JSONObject` class generated.
function newJSONObject4(Map arg0) returns JSONObject {
    handle externalObj = org_json_JSONObject_newJSONObject4(arg0.jObj);
    JSONObject newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.json.JSONObject`.
#
# + arg0 - The `Object` value required to map with the Java constructor parameter.
# + return - The new `JSONObject` class generated.
function newJSONObject5(Object arg0) returns JSONObject {
    handle externalObj = org_json_JSONObject_newJSONObject5(arg0.jObj);
    JSONObject newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.json.JSONObject`.
#
# + arg0 - The `Object` value required to map with the Java constructor parameter.
# + arg1 - The `string[]` value required to map with the Java constructor parameter.
# + return - The new `JSONObject` class generated.
function newJSONObject6(Object arg0, string[] arg1) returns JSONObject|error {
    handle externalObj = org_json_JSONObject_newJSONObject6(arg0.jObj, check jarrays:toHandle(arg1, "java.lang.String"));
    JSONObject newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.json.JSONObject`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + return - The new `JSONObject` class generated.
public isolated function newJSONObject7(string arg0) returns JSONObject {
    handle externalObj = org_json_JSONObject_newJSONObject7(java:fromString(arg0));
    JSONObject newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `org.json.JSONObject`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + arg1 - The `Locale` value required to map with the Java constructor parameter.
# + return - The new `JSONObject` class generated.
function newJSONObject8(string arg0, Locale arg1) returns JSONObject {
    handle externalObj = org_json_JSONObject_newJSONObject8(java:fromString(arg0), arg1.jObj);
    JSONObject newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `doubleToString` method of `org.json.JSONObject`.
#
# + arg0 - The `float` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
function JSONObject_doubleToString(float arg0) returns string {
    return java:toString(org_json_JSONObject_doubleToString(arg0)) ?: "";
}

# The function that maps to the `getNames` method of `org.json.JSONObject`.
#
# + arg0 - The `JSONObject` value required to map with the Java method parameter.
# + return - The `string[]` value returning from the Java mapping.
function JSONObject_getNames(JSONObject arg0) returns string[]|error {
    handle externalObj = org_json_JSONObject_getNames(arg0.jObj);
    if java:isNull(externalObj) {
        return [];
    }
    return <string[]>check jarrays:fromHandle(externalObj, "string");
}

# The function that maps to the `getNames` method of `org.json.JSONObject`.
#
# + arg0 - The `Object` value required to map with the Java method parameter.
# + return - The `string[]` value returning from the Java mapping.
function JSONObject_getNames2(Object arg0) returns string[]|error {
    handle externalObj = org_json_JSONObject_getNames2(arg0.jObj);
    if java:isNull(externalObj) {
        return [];
    }
    return <string[]>check jarrays:fromHandle(externalObj, "string");
}

# The function that maps to the `numberToString` method of `org.json.JSONObject`.
#
# + arg0 - The `Number` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
function JSONObject_numberToString(Number arg0) returns string {
    return java:toString(org_json_JSONObject_numberToString(arg0.jObj)) ?: "";
}

# The function that maps to the `quote` method of `org.json.JSONObject`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
function JSONObject_quote(string arg0) returns string {
    return java:toString(org_json_JSONObject_quote(java:fromString(arg0))) ?: "";
}

# The function that maps to the `quote` method of `org.json.JSONObject`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + arg1 - The `Writer` value required to map with the Java method parameter.
# + return - The `Writer` or the `IOException` value returning from the Java mapping.
function JSONObject_quote2(string arg0, Writer arg1) returns Writer|IOException {
    handle|error externalObj = org_json_JSONObject_quote2(java:fromString(arg0), arg1.jObj);
    if (externalObj is error) {
        IOException e = error IOException(IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Writer newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `stringToValue` method of `org.json.JSONObject`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + return - The `Object` value returning from the Java mapping.
function JSONObject_stringToValue(string arg0) returns Object {
    handle externalObj = org_json_JSONObject_stringToValue(java:fromString(arg0));
    Object newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `testValidity` method of `org.json.JSONObject`.
#
# + arg0 - The `Object` value required to map with the Java method parameter.
function JSONObject_testValidity(Object arg0) {
    org_json_JSONObject_testValidity(arg0.jObj);
}

# The function that maps to the `valueToString` method of `org.json.JSONObject`.
#
# + arg0 - The `Object` value required to map with the Java method parameter.
# + return - The `string` value returning from the Java mapping.
function JSONObject_valueToString(Object arg0) returns string {
    return java:toString(org_json_JSONObject_valueToString(arg0.jObj)) ?: "";
}

# The function that maps to the `wrap` method of `org.json.JSONObject`.
#
# + arg0 - The `Object` value required to map with the Java method parameter.
# + return - The `Object` value returning from the Java mapping.
function JSONObject_wrap(Object arg0) returns Object {
    handle externalObj = org_json_JSONObject_wrap(arg0.jObj);
    Object newObj = new (externalObj);
    return newObj;
}

# The function that retrieves the value of the public field `NULL`.
#
# + return - The `Object` value of the field.
function JSONObject_getNULL() returns Object {
    handle externalObj = org_json_JSONObject_getNULL();
    Object newObj = new (externalObj);
    return newObj;
}

function org_json_JSONObject_accumulate(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "accumulate",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.lang.Object"]
} external;

function org_json_JSONObject_append(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "append",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.lang.Object"]
} external;

function org_json_JSONObject_clear(handle receiver) = @java:Method {
    name: "clear",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_doubleToString(float arg0) returns handle = @java:Method {
    name: "doubleToString",
    'class: "org.json.JSONObject",
    paramTypes: ["double"]
} external;

function org_json_JSONObject_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.Object"]
} external;

function org_json_JSONObject_get(handle receiver, handle arg0) returns handle = @java:Method {
    name: "get",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_getBigDecimal(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getBigDecimal",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_getBigInteger(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getBigInteger",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_getBoolean(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "getBoolean",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_getDouble(handle receiver, handle arg0) returns float = @java:Method {
    name: "getDouble",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_getEnum(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "getEnum",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.Class", "java.lang.String"]
} external;

function org_json_JSONObject_getFloat(handle receiver, handle arg0) returns float = @java:Method {
    name: "getFloat",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_getInt(handle receiver, handle arg0) returns int = @java:Method {
    name: "getInt",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_getJSONArray(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getJSONArray",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_getJSONObject(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getJSONObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_getLong(handle receiver, handle arg0) returns int = @java:Method {
    name: "getLong",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_getMapType(handle receiver) returns handle = @java:Method {
    name: "getMapType",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_getNames(handle arg0) returns handle = @java:Method {
    name: "getNames",
    'class: "org.json.JSONObject",
    paramTypes: ["org.json.JSONObject"]
} external;

function org_json_JSONObject_getNames2(handle arg0) returns handle = @java:Method {
    name: "getNames",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.Object"]
} external;

function org_json_JSONObject_getNumber(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getNumber",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_getString(handle receiver, handle arg0) returns handle = @java:Method {
    name: "getString",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_has(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "has",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_increment(handle receiver, handle arg0) returns handle = @java:Method {
    name: "increment",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_isEmpty(handle receiver) returns boolean = @java:Method {
    name: "isEmpty",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_isNull(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "isNull",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_keySet(handle receiver) returns handle = @java:Method {
    name: "keySet",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_keys(handle receiver) returns handle = @java:Method {
    name: "keys",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_length(handle receiver) returns int = @java:Method {
    name: "length",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_names(handle receiver) returns handle = @java:Method {
    name: "names",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_numberToString(handle arg0) returns handle = @java:Method {
    name: "numberToString",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.Number"]
} external;

function org_json_JSONObject_opt(handle receiver, handle arg0) returns handle = @java:Method {
    name: "opt",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optBigDecimal(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "optBigDecimal",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.math.BigDecimal"]
} external;

function org_json_JSONObject_optBigInteger(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "optBigInteger",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.math.BigInteger"]
} external;

function org_json_JSONObject_optBoolean(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "optBoolean",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optBoolean2(handle receiver, handle arg0, boolean arg1) returns boolean = @java:Method {
    name: "optBoolean",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "boolean"]
} external;

function org_json_JSONObject_optBooleanObject(handle receiver, handle arg0) returns handle = @java:Method {
    name: "optBooleanObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optBooleanObject2(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "optBooleanObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.lang.Boolean"]
} external;

function org_json_JSONObject_optDouble(handle receiver, handle arg0) returns float = @java:Method {
    name: "optDouble",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optDouble2(handle receiver, handle arg0, float arg1) returns float = @java:Method {
    name: "optDouble",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "double"]
} external;

function org_json_JSONObject_optDoubleObject(handle receiver, handle arg0) returns handle = @java:Method {
    name: "optDoubleObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optDoubleObject2(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "optDoubleObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.lang.Double"]
} external;

function org_json_JSONObject_optEnum(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "optEnum",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.Class", "java.lang.String"]
} external;

function org_json_JSONObject_optEnum2(handle receiver, handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "optEnum",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.Class", "java.lang.String", "java.lang.Enum"]
} external;

function org_json_JSONObject_optFloat(handle receiver, handle arg0) returns float = @java:Method {
    name: "optFloat",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optFloat2(handle receiver, handle arg0, float arg1) returns float = @java:Method {
    name: "optFloat",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "float"]
} external;

function org_json_JSONObject_optFloatObject(handle receiver, handle arg0) returns handle = @java:Method {
    name: "optFloatObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optFloatObject2(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "optFloatObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.lang.Float"]
} external;

function org_json_JSONObject_optInt(handle receiver, handle arg0) returns int = @java:Method {
    name: "optInt",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optInt2(handle receiver, handle arg0, int arg1) returns int = @java:Method {
    name: "optInt",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "int"]
} external;

function org_json_JSONObject_optIntegerObject(handle receiver, handle arg0) returns handle = @java:Method {
    name: "optIntegerObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optIntegerObject2(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "optIntegerObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.lang.Integer"]
} external;

function org_json_JSONObject_optJSONArray(handle receiver, handle arg0) returns handle = @java:Method {
    name: "optJSONArray",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optJSONArray2(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "optJSONArray",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "org.json.JSONArray"]
} external;

function org_json_JSONObject_optJSONObject(handle receiver, handle arg0) returns handle = @java:Method {
    name: "optJSONObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optJSONObject2(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "optJSONObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "org.json.JSONObject"]
} external;

function org_json_JSONObject_optLong(handle receiver, handle arg0) returns int = @java:Method {
    name: "optLong",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optLong2(handle receiver, handle arg0, int arg1) returns int = @java:Method {
    name: "optLong",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "long"]
} external;

function org_json_JSONObject_optLongObject(handle receiver, handle arg0) returns handle = @java:Method {
    name: "optLongObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optLongObject2(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "optLongObject",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.lang.Long"]
} external;

function org_json_JSONObject_optNumber(handle receiver, handle arg0) returns handle = @java:Method {
    name: "optNumber",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optNumber2(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "optNumber",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.lang.Number"]
} external;

function org_json_JSONObject_optQuery(handle receiver, handle arg0) returns handle = @java:Method {
    name: "optQuery",
    'class: "org.json.JSONObject",
    paramTypes: ["org.json.JSONPointer"]
} external;

function org_json_JSONObject_optQuery2(handle receiver, handle arg0) returns handle = @java:Method {
    name: "optQuery",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optString(handle receiver, handle arg0) returns handle = @java:Method {
    name: "optString",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_optString2(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "optString",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.lang.String"]
} external;

function org_json_JSONObject_put(handle receiver, handle arg0, boolean arg1) returns handle = @java:Method {
    name: "put",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "boolean"]
} external;

function org_json_JSONObject_put2(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "put",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.util.Collection"]
} external;

function org_json_JSONObject_put3(handle receiver, handle arg0, float arg1) returns handle = @java:Method {
    name: "put",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "double"]
} external;

function org_json_JSONObject_put4(handle receiver, handle arg0, float arg1) returns handle = @java:Method {
    name: "put",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "float"]
} external;

function org_json_JSONObject_put5(handle receiver, handle arg0, int arg1) returns handle = @java:Method {
    name: "put",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "int"]
} external;

function org_json_JSONObject_put6(handle receiver, handle arg0, int arg1) returns handle = @java:Method {
    name: "put",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "long"]
} external;

function org_json_JSONObject_put7(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "put",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.util.Map"]
} external;

function org_json_JSONObject_put8(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "put",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.lang.Object"]
} external;

function org_json_JSONObject_putOnce(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "putOnce",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.lang.Object"]
} external;

function org_json_JSONObject_putOpt(handle receiver, handle arg0, handle arg1) returns handle = @java:Method {
    name: "putOpt",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.lang.Object"]
} external;

function org_json_JSONObject_query(handle receiver, handle arg0) returns handle = @java:Method {
    name: "query",
    'class: "org.json.JSONObject",
    paramTypes: ["org.json.JSONPointer"]
} external;

function org_json_JSONObject_query2(handle receiver, handle arg0) returns handle = @java:Method {
    name: "query",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_quote(handle arg0) returns handle = @java:Method {
    name: "quote",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_quote2(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "quote",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.io.Writer"]
} external;

function org_json_JSONObject_remove(handle receiver, handle arg0) returns handle = @java:Method {
    name: "remove",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_similar(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "similar",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.Object"]
} external;

function org_json_JSONObject_stringToValue(handle arg0) returns handle = @java:Method {
    name: "stringToValue",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_testValidity(handle arg0) = @java:Method {
    name: "testValidity",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.Object"]
} external;

function org_json_JSONObject_toJSONArray(handle receiver, handle arg0) returns handle = @java:Method {
    name: "toJSONArray",
    'class: "org.json.JSONObject",
    paramTypes: ["org.json.JSONArray"]
} external;

function org_json_JSONObject_toMap(handle receiver) returns handle = @java:Method {
    name: "toMap",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_valueToString(handle arg0) returns handle = @java:Method {
    name: "valueToString",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.Object"]
} external;

function org_json_JSONObject_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "org.json.JSONObject",
    paramTypes: ["long"]
} external;

function org_json_JSONObject_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "org.json.JSONObject",
    paramTypes: ["long", "int"]
} external;

function org_json_JSONObject_wrap(handle arg0) returns handle = @java:Method {
    name: "wrap",
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.Object"]
} external;

function org_json_JSONObject_write(handle receiver, handle arg0) returns handle = @java:Method {
    name: "write",
    'class: "org.json.JSONObject",
    paramTypes: ["java.io.Writer"]
} external;

function org_json_JSONObject_write2(handle receiver, handle arg0, int arg1, int arg2) returns handle = @java:Method {
    name: "write",
    'class: "org.json.JSONObject",
    paramTypes: ["java.io.Writer", "int", "int"]
} external;

function org_json_JSONObject_getNULL() returns handle = @java:FieldGet {
    name: "NULL",
    'class: "org.json.JSONObject"
} external;

function org_json_JSONObject_newJSONObject1() returns handle = @java:Constructor {
    'class: "org.json.JSONObject",
    paramTypes: []
} external;

function org_json_JSONObject_newJSONObject2(handle arg0, handle arg1) returns handle = @java:Constructor {
    'class: "org.json.JSONObject",
    paramTypes: ["org.json.JSONObject", "[Ljava.lang.String;"]
} external;

function org_json_JSONObject_newJSONObject3(handle arg0) returns handle = @java:Constructor {
    'class: "org.json.JSONObject",
    paramTypes: ["org.json.JSONTokener"]
} external;

function org_json_JSONObject_newJSONObject4(handle arg0) returns handle = @java:Constructor {
    'class: "org.json.JSONObject",
    paramTypes: ["java.util.Map"]
} external;

function org_json_JSONObject_newJSONObject5(handle arg0) returns handle = @java:Constructor {
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.Object"]
} external;

function org_json_JSONObject_newJSONObject6(handle arg0, handle arg1) returns handle = @java:Constructor {
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.Object", "[Ljava.lang.String;"]
} external;

isolated function org_json_JSONObject_newJSONObject7(handle arg0) returns handle = @java:Constructor {
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String"]
} external;

function org_json_JSONObject_newJSONObject8(handle arg0, handle arg1) returns handle = @java:Constructor {
    'class: "org.json.JSONObject",
    paramTypes: ["java.lang.String", "java.util.Locale"]
} external;

