# Build stage (discarded after build)
FROM ballerina/ballerina:2201.12.10 AS builder

USER root

WORKDIR /app

COPY Ballerina.toml .
COPY *.bal .
COPY modules ./modules

RUN bal build

# Runtime stage
FROM ballerina/ballerina:2201.12.10

WORKDIR /app

COPY --from=builder --chown=10014:0 /app/target/bin/afm_ballerina.jar ./target/bin/
COPY --chown=10014:0 resources ./resources

USER 10014

ENTRYPOINT ["bal", "run", "target/bin/afm_ballerina.jar"]
