FROM maven:3.8.3-openjdk-17-slim AS maven

WORKDIR /home/ikon/JVS_CRUD_CICD
COPY . /usr/src/JVS_CRUD_CICD

COPY pom.xml .
RUN mvn dependency:go-offline

# COPY src/ src/
RUN ./mvnw package -DskipTests

FROM openjdk:17-jdk-slim
ARG JAR_FILE=JVS_CRUD_CICD-0.0.1-SNAPSHOT.jar

WORKDIR /home/ikon/JVS_CRUD_CICD

COPY --from=maven /usr/src/app/target/${JAR_FILE} /opt/app

EXPOSE 5000

ENTRYPOINT ["java", "-jar", "target/JVS_CRUD_CICD-0.0.1-SNAPSHOT.jar"]

