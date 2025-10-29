# Use JDK base image
FROM openjdk:17-jdk-slim

# Copy the built jar file from Maven target folder
COPY target/bookreview-0.0.1-SNAPSHOT.jar app.jar

# Expose Spring Boot default port
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java","-jar","/app.jar"]
