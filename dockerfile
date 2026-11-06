#--We Use Dockerfile to create Image for our Application--

# Stage 1 - jar Builder

# Maven Image
#FROM  maven:3.8.6-openjdk-18 AS maven-builder

# Maven Image with Java 17 (Stable & Available)
FROM maven:3.8.7-eclipse-temurin-17 AS maven-builder

# set the working directory 

WORKDIR /app

# Copy  source code from local to container

COPY . /app

# Build application and skip test cases

# expose port 8080

RUN mvn clean install -DskipTests=true 

#Entery point [ 'java' , "-jar / "/expemseapp.jar]

#---------------------------------------------------
# stage 2 - app build
#---------------------------------------------------
    
#Imaport small size java image 
#FROM openjdk:18-jdk-alpine

# Import small size java image (Eclipse Temurin Alpine)
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Copy build From stage 1 ( builder ) 

COPY --from=maven-builder /app/target/*.jar /app/expensesapp.jar

#expose port 8080

EXPOSE 8080

# start the application

ENTRYPOINT ["java", "-jar", "/app/target/expensesapp.jar"]
