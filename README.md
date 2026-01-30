# DevOps Project 1 – Automated CI/CD Deployment on AWS

## 📌 Overview
This project demonstrates an end-to-end DevOps pipeline where a Python application is containerized using Docker, pushed to DockerHub, and automatically deployed to an AWS EC2 instance using GitHub Actions.

Any code change pushed to the `main` branch triggers a CI/CD pipeline that rebuilds the Docker image and redeploys the application without manual intervention.

---

## 🏗️ Architecture
Local Machine
|
| (git push)
v
GitHub Repository
|
| (GitHub Actions CI/CD)
v
Docker Build & Push
|
v
DockerHub Registry
|
| (SSH)
v
AWS EC2
|
v
Docker Container (Python App)


---

## 🛠️ Tech Stack
- **Cloud**: AWS EC2 (Ubuntu)
- **CI/CD**: GitHub Actions
- **Containerization**: Docker
- **Registry**: DockerHub
- **Language**: Python (Flask)
- **OS**: Linux
- **Version Control**: Git & GitHub

---

## 🚀 CI/CD Workflow
1. Developer pushes code to the `main` branch
2. GitHub Actions pipeline is triggered
3. Docker image is built from Dockerfile
4. Image is pushed to DockerHub
5. Pipeline connects to EC2 via SSH
6. Existing container is stopped and removed
7. New container is started with the latest image

---

## 🔐 Security & Best Practices
- Used SSH key-based authentication for EC2 access
- Managed sensitive credentials using GitHub Actions Secrets
- Used DockerHub access tokens instead of passwords
- Followed immutable infrastructure principles (replace container instead of modifying)

---

## 🧪 How to Run Locally

```bash
docker build -t devops-project-1 .
docker run -d -p 5000:5000 devops-project-1

##Access the app at:
 http://localhost:5000

##☁️ Deployment

The application is deployed on an AWS EC2 instance and exposed via port 5000.
http://<EC2_PUBLIC_IP>:5000

