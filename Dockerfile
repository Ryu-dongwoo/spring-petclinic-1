FROM adoptopenjdk/openjdk11
RUN chmod u+x mvnw
CMD ["./mvnw", "clean", "package"]
ARG JAR_FILE_PATH=target/*.jar
COPY ${JAR_FILE_PATH} spring-petclinc.jar
ENTRYPOINT ["java", "-jar", "spring-petclinic.jar"]
