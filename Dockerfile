FROM openjdk:17-jdk-slim
ADD targetspringboot-application-0.0.1-SNAPSHOT.jar springboot-application.jar
RUN sh -c 'touch /springboot-application.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","springboot-application.jar"]
EXPOSE 8081
