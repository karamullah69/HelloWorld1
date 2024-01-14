# Use a base image (for example, OpenJDK for Java applications)
FROM openjdk:8-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR or files into the container
COPY target/your-application.jar .

# Define the command to run your application
CMD ["java", "-jar", "your-application.jar"]
