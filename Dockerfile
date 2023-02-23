FROM maven:3.8.3-openjdk-17-slim AS maven

WORKDIR /home/ikon/JVS_CRUD_CICD

COPY . .

EXPOSE 5000
RUN ./mvnw package -DskipTests

CMD ["java", "-jar", "/target/JVS_CRUD_CICD-0.0.1-SNAPSHOT.jar"]
