FROM openjdk:17-jdk-alpine

WORKDIR .
COPY . .

EXPOSE 5000

CMD ["java", "-jar", "/target/JVS_CRUD_CICD-0.0.1-SNAPSHOT.jar"]
