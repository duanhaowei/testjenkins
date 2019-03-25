FROM openjdk
MAINTAINER howard
COPY testjks.jar testjks.jar
EXPOSE 8080
#使用这个相比cmd,则是可以把 run命令后跟着参数一起传递给指定命令
ENTRYPOINT ["java","-jar","/testjks.jar"]