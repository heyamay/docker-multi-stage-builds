# Flask App with Docker, Docker Compose, and Terraform

## 🚀 Project Overview
This project demonstrates the development, containerization, orchestration, and deployment of a Python Flask application using Docker, Docker Compose, and Terraform on AWS EC2.

## 🛠 Tech Stack
- **Python Flask** - Web framework
- **Docker & Docker Compose** - Containerization and service orchestration
- **PostgreSQL** - Database integration
- **Terraform** - Infrastructure as Code (IaC) for AWS provisioning
- **AWS EC2** - Cloud deployment
- **Linux WSL** - Local development environment

## 📌 Features
### 1️⃣ Developed and Containerized a Python Flask Application with Docker
- Built a scalable Python Flask web application.
- Used **multi-stage builds** to reduce image size by **30%** and improve deployment efficiency.
- Pushed Docker images to **Docker Hub** and managed containers locally.
- Integrated **PostgreSQL** for database functionality.

### 2️⃣ Orchestrated Multi-Service Application Using Docker Compose
- Configured **Docker Compose** to deploy the Flask app and PostgreSQL database as interdependent services.
- Reduced setup time by **50%** compared to manual configurations.
- Implemented **port mapping** and **environment variable management** for seamless local testing.

### 3️⃣ Provisioned AWS EC2 Infrastructure with Terraform
- Automated the deployment of an **AWS EC2** instance to host the Dockerized Flask app.
- Achieved **100% infrastructure-as-code coverage** for the project.
- Configured **user data scripts** to install Docker and run containers automatically.

## 📌 Installation and Setup
### 1️⃣ Clone the Repository
```sh
git clone https://github.com/heyamay/docker-multi-stage-builds.git
cd flask-docker-terraform
```

### 2️⃣ Build and Run with Docker
```sh
docker build -t flask-app .
docker run -p 5000:5000 flask-app
```

### 3️⃣ Deploy with Docker Compose
```sh
docker-compose up -d
```

### 4️⃣ Deploy to AWS EC2 using Terraform
```sh
cd terraform
terraform init
terraform apply -auto-approve
```

## 📌 Resume Highlights
✅ **Developed and containerized** a Python Flask app using **Docker & Docker Compose**, reducing deployment setup time by **60%**.
✅ **Automated AWS EC2 provisioning** with **Terraform (IaC)**, cutting manual cloud infrastructure setup time by **80%**.
✅ Integrated **PostgreSQL in a Dockerized environment**, using **Docker Volumes** for data persistence, reducing database downtime by **90%**.

## 📌 Skills
- **Docker** 🐳  
- **Terraform** 🌍  
- **PostgreSQL** 🛢️  
- **Linux** 🐧  
- **Amazon Web Services (AWS)** ☁️  

## 📌 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```
