FROM openjdk:8<br>
RUN mkdir app<br>
ADD target/spring-boot-helloworld-jenkins-docker.jar app/spring-boot-helloworld-jenkins-docker.jar <br>
WORKDIR app<br>
RUN "pwd"<br>
RUN "ls"<br>
EXPOSE 8085<br>
ENTRYPOINT ["java","-jar", "spring-boot-helloworld-jenkins-docker.jar"]