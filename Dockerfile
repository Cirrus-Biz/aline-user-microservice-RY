FROM amazoncorretto:11-alpine3.15

COPY ./user-microservice/target/user-microservice-*.jar app.jar

ENTRYPOINT [ "java", "-jar", "/app.jar" ]