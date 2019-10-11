FROM openjdk:11
MAINTAINER howard
ENV JAR_NAME testjks
COPY target/$JAR_NAME.jar $JAR_NAME.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","demo2019.jar","-Duser.timezone","Asia/Shanghai","-Dfile.encoding","UTF-8"]