#define base docker image
# Use an official OpenJDK 8 runtime as the base image
FROM openjdk:17-jdk
LABEL maintainer="abhishek"
# Copy the Spring Boot application JAR file into the container
## Copy the Spring Boot JAR file into the container
#COPY spring-boot-dockerDemo.jar /app/

ADD target/dockerDemo-0.0.1-SNAPSHOT.jar spring-boot-dockerDemo.jar
# Set the entry point for the container
ENTRYPOINT ["java", "-jar", "spring-boot-dockerDemo.jar"]
# Expose the port that the Spring Boot application listens on
EXPOSE 8080