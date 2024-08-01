FROM maven:3.8.4-openjdk-17 AS build

WORKDIR /app

COPY pom.xml .
COPY src src

RUN mvn package

FROM openjdk:17-jdk

WORKDIR /app

COPY --from=build /app/target/words.jar /app
COPY entrypoint.sh /app

RUN chmod +x /app/entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/app/entrypoint.sh"]

# # Use an official Maven image to build the application
# FROM maven:3.8.4-openjdk-17-slim AS build

# # Set the working directory inside the container
# WORKDIR /app

# # Copy the pom.xml and download the dependencies
# COPY pom.xml ./
# RUN mvn dependency:go-offline

# # Copy the rest of the application files
# COPY src ./src

# # Package the application
# RUN mvn clean package -U

# # Use an official OpenJDK image to run the application
# FROM openjdk:17-jdk-slim

# # Set the working directory inside the container
# WORKDIR /app

# # Copy the packaged JAR file from the build stage
# COPY --from=build /app/target/words.jar ./words.jar

# # Expose the port the application runs on
# EXPOSE 8080

# # Define the command to run the application
# CMD ["java", "-jar", "words.jar"]

