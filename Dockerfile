# 1. Use the official Java 17 slim image
FROM openjdk:17-jdk-slim

# 2. Set the working directory
WORKDIR /app

# 3. Copy the built JAR into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# 4. Expose port 8080
EXPOSE 8080

# 5. Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
