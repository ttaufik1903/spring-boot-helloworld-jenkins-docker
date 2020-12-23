FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/*.jar spring-boot-helloworld-jenkins-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-helloworld-jenkins-docker.jar.jar"]