FROM java:8-jdk-alpine

COPY ./target/basic-spring-boot-docker-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch basic-spring-boot-docker-0.0.1-SNAPSHOT.jar'

ARG JAR_FILE=target/basic-spring-boot-docker-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","basic-spring-boot-docker-0.0.1-SNAPSHOT.jar"]