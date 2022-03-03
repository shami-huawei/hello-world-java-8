# syntax=docker/dockerfile:1

FROM openjdk:8-jdk-alpine

WORKDIR /app

RUN ./mvnw dependency:go-offline

ENTRYPOINT ["java", "HelloWorld"]
