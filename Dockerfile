FROM openjdk:8
EXPOSE 9999
ARG JAR_FILE
ADD ${JAR_FILE} spring-boot-helloworld-jenkins-docker.jar
ENTRYPOINT ["java", "-jar", "/spring-boot-helloworld-jenkins-docker.jar"]