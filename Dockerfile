# syntax=docker/dockerfile:1

FROM openjdk:8-jdk-alpine

WORKDIR /app

ENTRYPOINT ["java", "HelloWorld"]

EXPOSE 8080
