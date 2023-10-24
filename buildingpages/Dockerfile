# FROM maven:3.8.2-jdk-8 # for Java 8
#FROM maven:3.8.5-openjdk-17
#
#WORKDIR /buildingpages-app
#COPY . .
#RUN mvn clean install
#
#CMD mvn spring-boot:run

##### Stage 1: Build the application
#FROM adoptopenjdk/openjdk11:ubi as build
#
## Set the current working directory inside the image
#WORKDIR /app
#
## Copy maven executable to the image
#COPY mvnw .
#COPY .mvn .mvn
#
## Copy the pom.xml file
#COPY pom.xml .
#
## Build all the dependencies in preparation to go offline.
## This is a separate step so the dependencies will be cached unless
## the pom.xml file has changed.
#RUN ./mvnw dependency:go-offline -B
#
## Copy the project source
#COPY src src
#
## Package the application
#RUN ./mvnw package
#RUN mkdir -p target/dependency && (cd target/dependency; jar -xf ../*.jar)
#
#
##### Stage 2: A minimal docker image with command to run the app
#FROM adoptopenjdk/openjdk11:ubi
#
#ARG DEPENDENCY=/app/target/dependency
#
## Copy project dependencies from the build stage
#COPY --from=build ${DEPENDENCY}/BOOT-INF/lib /app/lib
#COPY --from=build ${DEPENDENCY}/META-INF /app/META-INF
#COPY --from=build ${DEPENDENCY}/BOOT-INF/classes /app
#
#ENTRYPOINT ["java","-cp","app:app/lib/*","com.project.buildingpages"]

# Use a base image with Maven and Java 17 to build the application
FROM maven:3.8.4-openjdk-17 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the project's POM file and build files
COPY pom.xml .
COPY src ./src

# Build the Spring Boot application
RUN mvn clean package

# Create a lightweight image with just the JAR file
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/target/*.jar app.jar

# Expose the port your Spring Boot application runs on
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "app.jar"]

