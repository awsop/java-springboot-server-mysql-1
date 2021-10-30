FROM openjdk:8

WORKDIR  /app

COPY ./target/crud-0.0.1-SNAPSHOT.jar  /app/crud-0.0.1-SNAPSHOT.jar

EXPOSE  5000

CMD ["java" , "-jar" , /app/crud-0.0.1-SNAPSHOT.jar]
