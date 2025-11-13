// Ballerina error type for `java.lang.InterruptedException`.

const INTERRUPTEDEXCEPTION = "InterruptedException";

type InterruptedExceptionData record {
    string message;
};

type InterruptedException distinct error<InterruptedExceptionData>;

