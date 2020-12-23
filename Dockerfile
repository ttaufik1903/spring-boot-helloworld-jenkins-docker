FROM adoptopenjdk:11-jre-hotspot as builder
EXPOSE 9999
ARG JAR_FILE=target/spring-boot-helloworld-jenkins-docker.jar
COPY ${JAR_FILE} spring-boot-helloworld-jenkins-docker.jar
RUN java -Djarmode=layertools -jar spring-boot-helloworld-jenkins-docker.jar extract

FROM adoptopenjdk:11-jre-hotspot
COPY --from=builder dependencies/ ./
COPY --from=builder snapshot-dependencies/ ./
COPY --from=builder spring-boot-loader/ ./
COPY --from=builder application/ ./
ENTRYPOINT ["java", "org.springframework.boot.loader.JarLauncher"]