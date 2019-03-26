FROM openjdk:8-jre-slim
MAINTAINER howard
ENV JOBBASENAME testjks
COPY target/$JOBBASENAME.jar $JOBBASENAME.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/$JOBBASENAME.jar"]