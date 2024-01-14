# Print the contents of the build context
RUN ls -R /

# Print the contents of the image
RUN ls -R /certs/client/

# Use a base image (for example, OpenJDK for Java applications)
FROM openjdk:8-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR or files into the container
COPY target/myproject.jar .

# Define the command to run your application
CMD ["java", "-jar", "myproject.jar"]
