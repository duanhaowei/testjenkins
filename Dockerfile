FROM openjdk:8-jre-slim
MAINTAINER howard
ENV JOB_BASE_NAME testjks
COPY target/testjks.jar testjks.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","testjks.jar"]