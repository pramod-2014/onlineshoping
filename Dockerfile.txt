# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file from the host to the container
# Make sure to update "onlinestore.jar" to your actual jar name
COPY target/onlinestore.jar app.jar

# Expose the port the app runs on (adjust if necessary)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
