FROM openjdk:8
EXPOSE 8080
ADD target/spring-boot-helloworld-jenkins-docker.war spring-boot-helloworld-jenkins-docker.war
ENTRYPOINT ["java","-jar","/spring-boot-helloworld-jenkins-docker.war"]