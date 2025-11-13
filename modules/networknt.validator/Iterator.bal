import ballerina/jballerina.java;

# Ballerina class mapping for the Java `java.util.Iterator` interface.
@java:Binding {'class: "java.util.Iterator"}
public isolated distinct class Iterator {

    *java:JObject;

    # The `handle` field that stores the reference to the `java.util.Iterator` object.
    public final handle jObj;

    # The init function of the Ballerina class mapping the `java.util.Iterator` Java interface.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public isolated function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.util.Iterator` Java interface.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "";
    }

    # The function that maps to the `forEachRemaining` method of `java.util.Iterator`.
    #
    # + arg0 - The `Consumer` value required to map with the Java method parameter.
    public function forEachRemaining(Consumer arg0) {
        java_util_Iterator_forEachRemaining(self.jObj, arg0.jObj);
    }

    # The function that maps to the `hasNext` method of `java.util.Iterator`.
    #
    # + return - The `boolean` value returning from the Java mapping.
    public isolated function hasNext() returns boolean {
        return java_util_Iterator_hasNext(self.jObj);
    }

    # The function that maps to the `next` method of `java.util.Iterator`.
    #
    # + return - The `Object` value returning from the Java mapping.
    public isolated function next() returns Object {
        handle externalObj = java_util_Iterator_next(self.jObj);
        Object newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `remove` method of `java.util.Iterator`.
    public function remove() {
        java_util_Iterator_remove(self.jObj);
    }

}

function java_util_Iterator_forEachRemaining(handle receiver, handle arg0) = @java:Method {
    name: "forEachRemaining",
    'class: "java.util.Iterator",
    paramTypes: ["java.util.function.Consumer"]
} external;

isolated function java_util_Iterator_hasNext(handle receiver) returns boolean = @java:Method {
    name: "hasNext",
    'class: "java.util.Iterator",
    paramTypes: []
} external;

isolated function java_util_Iterator_next(handle receiver) returns handle = @java:Method {
    name: "next",
    'class: "java.util.Iterator",
    paramTypes: []
} external;

function java_util_Iterator_remove(handle receiver) = @java:Method {
    name: "remove",
    'class: "java.util.Iterator",
    paramTypes: []
} external;

