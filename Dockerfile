# Use an appropriate base image for Windows
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/springbootApp.jar .

# Expose the port
EXPOSE 80

# Specify the command to run on container startup
CMD ["java", "-jar", "springbootApp.jar"]
