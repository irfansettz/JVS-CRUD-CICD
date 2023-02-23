FROM maven:3.10.1 AS maven

WORKDIR /home/ikon/JVS_CRUD_CICD
COPY . /usr/src/app

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src/ src/
RUN mvn package -DskipTests

FROM openjdk:17
ARG JAR_FILE=JVS_CRUD_CICD-0.0.1-SNAPSHOT.jar

WORKDIR /home/ikon/JVS_CRUD_CICD

COPY --from=maven /usr/src/app/target/${JAR_FILE} /opt/app

EXPOSE 5000

ENTRYPOINT ["java", "-jar", "target/JVS_CRUD_CICD-0.0.1-SNAPSHOT.jar"]

