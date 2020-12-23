FROM openjdk:8
RUN mkdir app
ADD target/spring-boot-helloworld-jenkins-docker.jar app/spring-boot-helloworld-jenkins-docker.jar <br>
WORKDIR app
EXPOSE 8085
ENTRYPOINT ["java","-jar", "spring-boot-helloworld-jenkins-docker.jar"]