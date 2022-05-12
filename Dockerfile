FROM amazoncorretto:11-alpine3.15

ENV JWT_SECRET_KEY=${JWT_SECRET_KEY}

COPY ./user-microservice/target/user-microservice-*.jar app.jar

ENTRYPOINT [ "java", "-jar", "/app.jar" ]