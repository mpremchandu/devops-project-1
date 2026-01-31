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
- **Container Orchestration**: Kuberenetes(Minikube)
- **Language**: Python (Flask)
- **OS**: Linux
- **Version Control**: Git & GitHub

---

## 🔹 Project-1: CI/CD with Docker & AWS EC2
## Workflow
- Application code is pushed to GitHub
- GitHub Actions builds a Docker image
- Image is pushed to DockerHub
- CI/CD pipeline SSHs into EC2
- Old container is replaced with a new one

## Key Concepts Demonstrated
- Containerization
- Immutable deployments
- Secure secret management
- Automated deployment
- Infrastructure troubleshooting

---
## 🔹 Project-2: Kubernetes Deployment
## Workflow
- Kubernetes Deployment pulls Docker image
- Multiple replicas are created
- Service exposes the application
- Kubernetes handles restarts and failures

## Key Concepts Demonstrated
- Container orchestration
- Declarative infrastructure
- Self-healing pods
- Scaling via replicas
---

## 🔐 Security & Best Practices
- Used SSH key-based authentication for EC2 access
- Managed sensitive credentials using GitHub Actions Secrets
- Used DockerHub access tokens instead of passwords
- Followed immutable infrastructure principles (replace container instead of modifying)

---
## Key Learnings
- Automation is more reliable than manual deployment
- Infrastructure failures must be expected and designed for
- Kubernetes simplifies operational complexity
