# Use OpenJDK 17 slim as the base image
FROM openjdk:17-slim

WORKDIR /app

# Copy the built jar file into the container
COPY target/onlineshoping-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]

