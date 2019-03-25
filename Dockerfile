FROM openjdk:8-jre-slim
MAINTAINER howard
COPY target/testjks.jar testjks.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/testjks.jar"]