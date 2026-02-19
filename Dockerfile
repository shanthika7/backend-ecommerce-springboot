# Step1: Use an official Java runtime as a parent image
FROM openjdk:11-jre

#Step 2: Set the working directory inside the container
WORKDIR /app

#Step 3: Copy the JAR file into the container
COPY target/ecommerce-api-1.0.0.jar ecommerce-api.jar

#Step 4: Expose port 8080 (where Spring Boot runs by default)
EXPOSE 8080

#Step 5: Command to run the JAR file)
ENTRYPOINT ["jave", "-jar", "ecommerce-api.jar"]