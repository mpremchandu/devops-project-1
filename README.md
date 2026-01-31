# DevOps Project 1 – Automated CI/CD Deployment on AWS

## 📌 Overview

Containerized a Python application using Docker, automated deployments with GitHub Actions, and deployed both on AWS EC2 and Kubernetes (Minikube).
---

## 🏗️ Architecture

Local Machine
|
| git push
v
GitHub Repository
|
| GitHub Actions (CI/CD)
v
Docker Build & Push
|
v
DockerHub Registry
|
| SSH
v
AWS EC2
|
v
Docker Container (Python Application)

---

## 🛠️ Tech Stack
- **Cloud**: AWS EC2 (Ubuntu)
- **CI/CD**: GitHub Actions
- **Containerization**: Docker
- **Registry**: DockerHub
- **Container Orchestration**: Kubernetes (Minikube)
- **Language**: Python (Flask)
- **OS**: Linux
- **Version Control**: Git & GitHub

---

## 🔹 Project-1: CI/CD with Docker & AWS EC2

### Workflow
- Application code is pushed to GitHub
- GitHub Actions builds a Docker image
- Image is pushed to DockerHub
- CI/CD pipeline SSHs into EC2
- Existing container is stopped and replaced with a new one

### Key Concepts Demonstrated
- Containerization
- Immutable deployments
- Secure secret management
- Automated deployment
- Infrastructure troubleshooting

---

## 🔹 Project-2: Kubernetes Deployment

### Workflow
- Kubernetes Deployment pulls the Docker image from DockerHub
- Multiple replicas of the application are created
- Service exposes the application to users
- Kubernetes automatically handles restarts and failures

### Key Concepts Demonstrated
- Container orchestration
- Declarative infrastructure
- Self-healing pods
- Scaling via replicas

---

## 🔐 Security & Best Practices
- SSH key-based authentication for EC2 access
- Secrets managed using GitHub Actions Secrets
- DockerHub access tokens used instead of passwords
- Followed immutable infrastructure principles by replacing containers instead of modifying them

---

## 📘 Key Learnings
- Automation is more reliable and repeatable than manual deployment
- Infrastructure failures should be expected and designed for
- Kubernetes simplifies operational complexity through self-healing and declarative management


