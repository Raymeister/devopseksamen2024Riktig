
FROM maven:3.8.5-openjdk-17 AS builder


WORKDIR /app


COPY pom.xml .
COPY src ./src


RUN mvn clean package


FROM openjdk:17-slim AS runtime


WORKDIR /app


COPY --from=builder /app/target/imagegenerator-0.0.1-SNAPSHOT.jar /app/imagegenerator.jar


ENV SQS_QUEUE_URL=""


ENTRYPOINT ["java", "-jar", "/app/imagegenerator.jar"]
