FROM openjdk:8
ARG JAR_FILE=target/spring-boot-helloworld-jenkins-docker.jar
COPY ${JAR_FILE} spring-boot-helloworld-jenkins-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-helloworld-jenkins-docker.jar"]