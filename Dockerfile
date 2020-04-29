FROM openjdk:8u191-jre-alpine3.9
ENTRYPOINT ["/usr/bin/java","-jar","/app.jar"]
ENV IP_HOST localhost
ENV S_PORT 8080
ENV APP_NAME mall-eureka
ARG JAR_FILE
ADD ${JAR_FILE} /app.jar
EXPOSE 8080