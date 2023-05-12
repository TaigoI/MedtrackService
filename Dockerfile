FROM maven:3-eclipse-temurin-17-alpine as build

WORKDIR /app

COPY . .

RUN mvn clean package -Dmaven.test.skip=true

FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY  --from=build  /app/target/backend-0.0.1-SNAPSHOT.jar .

RUN ls /app

CMD ["java", "-jar", "backend-0.0.1-SNAPSHOT.jar"]
