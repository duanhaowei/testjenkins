FROM openjdk:8-jre-slim
MAINTAINER howard
COPY target/$JOBBASENAME.jar $JOBBASENAME.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/$JOBBASENAME.jar"]