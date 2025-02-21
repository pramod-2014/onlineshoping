# Use an official OpenJDK 17 runtime as a parent image
FROM openjdk:17-jre-slim

WORKDIR /app

# Copy the jar file from the target folder
COPY target/onlinestore.jar app.jar

# Expose the port your app runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
