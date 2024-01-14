# Dockerfile
ARG CERT_PATH

# Now you can use $CERT_PATH in subsequent instructions
COPY $CERT_PATH /path/in/container


# Use a base image (for example, OpenJDK for Java applications)
FROM openjdk:8-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR or files into the container
COPY target/myproject.jar .

# Define the command to run your application
CMD ["java", "-jar", "myproject.jar"]
