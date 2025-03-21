FROM eclipse-temurin:21
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} app.jar
COPY src/main/resources/application-prod.yml application-prod.yml

ENTRYPOINT ["java", "-jar", "app.jar"]