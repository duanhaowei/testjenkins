FROM openjdk:8-jre-slim
MAINTAINER howard
ENV JAR_NAME testjks
COPY target/$JAR_NAME.jar $JAR_NAME.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","testjks.jar"]