FROM openjdk:8
EXPOSE 8080
ADD target/spring-boot-helloworld-jenkins-docker.jar spring-boot-helloworld-jenkins-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-helloworld-jenkins-docker.jar"]