# Multi-Container Dockerized Java Expense Tracker

A production-grade, multi-container architecture for a Java Expense Tracker application, orchestrated seamlessly using Docker Compose and backed by a persistent MySQL database. This project demonstrates DevOps best practices in service isolation, network bridging, and data persistence.

### 🛠️ Architecture & Tech Stack
* **Application Service:** Java (packaged via optimized Multi-Stage Dockerfile)
* **Database Service:** MySQL 8.0 (Containerized)
* **Orchestration:** Docker Compose (Multi-Service Blueprint)
* **Data Persistence:** Named Docker Volumes
* **Network Isolation:** Custom Bridge Network

### 🚀 Key DevOps & Engineering Features
* **Service Dependency Control:** Implemented conditional startup logic to ensure the MySQL database is fully healthy before the Java application boots up.
* **Stateful Data Persistence:** Utilized named Docker Volumes (`mysql_data`) to prevent data loss during container restarts or teardowns.
* **Secure Environment Management:** Separated database credentials from the infrastructure code using environment variables (`.env` integration ready).
* **Network Segregation:** Configured an isolated bridge network, allowing secure micro-runtime communication between the Java backend and MySQL while blocking unauthorized external exposure.
* **Optimized Image Footprint:** Application image built utilizing a multi-stage workflow, stripping away build tools (Maven/Gradle) to ensure a minimal and secure final runtime layer.




![Language](https://img.shields.io/badge/language-Java%20-blue.svg)
![Technologies](https://img.shields.io/badge/technologies-Spring_boot%20-green.svg)
![Technologies](https://img.shields.io/badge/technologies-Spring_MVC%20-green.svg)
![Technologies](https://img.shields.io/badge/technologies-Spring_Security%20-green.svg)
![Technologies](https://img.shields.io/badge/technologies-Spring_Data_jpa%20-green.svg)
![Technologies](https://img.shields.io/badge/technologies-Thymeleaf_&_Bootstrap%20-purple.svg)

# Expenses-Tracker-WebApp
## Overview
The Expenses Tracker App is a robust financial management solution developed using cutting-edge technologies such as Spring Boot, Spring Security, and MySQL. With user authentication and authorization features, users can securely sign up, sign in, and perform CRUD operations on their expenses. The app's intuitive interface, powered by Thymeleaf and Bootstrap, ensures a seamless user experience. The filtering functionality allows users to efficiently organize and analyze their financial data. Explore the power of streamlined expense tracking and financial control with this feature-rich application.<br> (Screenshots below for more illustration)

## Technologies Used
- Java
- Spring boot
- Spring MVC
- Spring Security
- Spring Data (JPA)
- MySQL
- Thymeleaf
- Bootstrap

## Features
- **User Authentication and Authorization:** Securely sign up, sign in, and access the app with built-in authentication and authorization.
- **CRUD Operations:** Perform essential financial tracking actions such as adding, reading, updating, and deleting expenses.
- **Filtering:** Utilize the filtering feature to efficiently sort and view expenses based on various criteria.

## Getting Started
1. **Clone the Repository:**
`git clone https://github.com/your-username/expenses-tracker.git`

2. **Configure Database:**
Set up MySQL database and update the application.properties file with your database configuration.

3. **Build and Run:**
Build the project using your preferred IDE or with Maven:
`mvn clean install`.

4. **Run the application:**
`java -jar target/expenses-tracker.jar`.

5. **Access the App:**
Open your web browser and navigate to `http://localhost:8080`.

## ScreenShots
![Example Image](screenshots/1.png) <br>
![Example Image](screenshots/2-2.png) <br>
![Example Image](screenshots/3-3.png) <br>
![Example Image](screenshots/4-4.png) <br>
![Example Image](screenshots/5-5.png) <br>
![Example Image](screenshots/6-6.png) <br>
![Example Image](screenshots/7.png) <br>
![Example Image](screenshots/8.png) <br>

## Contributions
Contributions are welcome! If you find a bug or have suggestions for improvement, feel free to open an issue or create a pull request.

## License
This project is licensed under the MIT License.
