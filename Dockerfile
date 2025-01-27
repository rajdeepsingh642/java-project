# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the Maven build
COPY target/java-hello-world-1.0-SNAPSHOT.jar app.jar

# Run the JAR file
CMD ["java", "-jar", "app.jar"]
