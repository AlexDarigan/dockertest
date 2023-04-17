FROM maven:3.8.3-openjdk-8-slim
MAINTAINER AlexDarigan
EXPOSE 8080
COPY . .
RUN mvn clean install
CMD ["java", "-jar", "target/DockerTest-1.0-SNAPSHOT.jar"]
