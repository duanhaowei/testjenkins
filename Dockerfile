FROM openjdk:8-jre-slim
MAINTAINER howard
ENV JOB_BASE_NAME testjks
COPY target/$JOB_BASE_NAME.jar $JOB_BASE_NAME.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/$JOB_BASE_NAME.jar"]