
# we will use openjdk 8 with alpine as it is a very small linux distro
FROM openjdk:8-jre-alpine3.9

WORKDIR /app

# copy the packaged jar file into our docker image
COPY  ./target/crud-0.0.1-SNAPSHOT.jar  /app/crud-0.0.1-SNAPSHOT.jar

# set the startup command to execute the jar
ENTRYPOINT ["java", "-jar", "/app/crud-0.0.1-SNAPSHOT.jar"]


