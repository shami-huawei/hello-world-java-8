# syntax=docker/dockerfile:1

FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./

RUN ./mvnw dependency:go-offline

ENTRYPOINT ["java", "HelloWorld"]
