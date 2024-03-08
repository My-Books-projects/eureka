FROM eclipse-temurin:11
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} app.jar
COPY src/main/resources/application-prod.properties application-prod.properties

ENTRYPOINT ["java", "-jar", "app.jar"]