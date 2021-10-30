FROM openjdk:8-jre-slim
WORKDIR /home
COPY /target/crud-0.0.1-SNAPSHOT.jar  crud-0.0.1-SNAPSHOT.jar 
EXPOSE 5000
ENTRYPOINT ["java", "-jar", "crud-0.0.1-SNAPSHOT.jar"]




