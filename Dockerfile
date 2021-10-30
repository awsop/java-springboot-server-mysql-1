FROM maven:3.5-jdk-8 AS build
WORKDIR /app
COPY src .
COPY pom.xml .
RUN mvn -f pom.xml clean package

FROM openjdk:8-alpine
COPY --from=build /src/app/target/*.jar app.jar
EXPOSE 5000
ENTRYPOINT ["java","-jar","app.jar"]




