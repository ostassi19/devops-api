🚀 DevOps Mini Project – Docker, Kubernetes & CI/CD Pipeline

This project demonstrates a complete cloud-native DevOps workflow, including containerization, orchestration, and automated deployment using Docker, Kubernetes, and GitHub Actions.

The goal is to showcase hands-on experience in deploying microservices using real DevOps practices.

📌 Project Overview

End-to-end pipeline:

Flask API → Docker → GitHub Container Registry (GHCR) → Kubernetes (Minikube) → GitHub Actions CI/CD

Every push to main triggers:

1. Continuous Integration (CI)

Source code checkout

Docker image build

Automatic push to GHCR

2. Continuous Deployment (CD)

GitHub Actions triggers a Kubernetes rollout restart

Kubernetes pulls the newest image

Updated API becomes available automatically

🧰 Technologies Used
| Tool | Purpose |
|------|---------|
| **WSL2 + Ubuntu** | Linux environment for development |
| **Docker Engine** | Containerization of the application |
| **Kubernetes (Minikube)** | Local cluster for deployment and testing |
| **kubectl** | Kubernetes command-line tool |
| **GitHub Actions** | CI/CD automation |
| **GitHub Container Registry (GHCR)** | Stores and distributes Docker images |
| **Flask (Python)** | Minimal API used for demonstration |

📁 Project Structure
devops-api/
  ├── app.py                     # Simple Flask API
  ├── requirements.txt           # API dependencies
  ├── Dockerfile                 # Container build instructions
  ├── deployment.yaml            # Kubernetes Deployment manifest
  ├── service.yaml               # Kubernetes Service manifest
  └── .github/workflows/
        ├── ci.yml               # CI: Build & push Docker image to GHCR
        └── cd.yml               # CD: Restart Kubernetes Deployment


☸️ Kubernetes Deployment Workflow

Application deployed as a Kubernetes Deployment on Minikube

Exposed via NodePort Service for local access

imagePullSecrets authenticate GHCR image pulls

imagePullPolicy: Always ensures the newest image is always used

🔄 CI/CD Pipeline Summary
Continuous Integration

Runs on each push to main

Builds Docker image

Logs in to GHCR

Pushes image to registry

Continuous Deployment

GitHub Actions connects to the Kubernetes cluster via kubeconfig

Executes a kubectl rollout restart

Kubernetes automatically fetches and deploys the latest image

Enables rolling updates without downtime.

🎯 Key Learning Outcomes

Building this project demonstrated strong practical knowledge in:

Docker and containerized microservices

Kubernetes resource definitions (Deployment, Service)

Working with container registries (GHCR)

Automating deployments using GitHub Actions

Managing registry authentication via Kubernetes secrets

Debugging Kubernetes pods and deployments

Using Minikube to simulate cloud-native environments

🏁 Final Result

A fully automated DevOps pipeline where:

Every code change → triggers CI

CI builds and pushes container images to GHCR

CD updates the Kubernetes deployment automatically

The application runs continuously inside Kubernetes

This project reflects a production-style cloud-native workflow, showcasing DevOps experience relevant to Junior Cloud / DevOps Engineer roles.

👤 Author

Amani Miled
Developer / Cloud & DevOps / Security Engineer
Skills: Docker · Kubernetes · CI/CD · GitHub Actions · Python · Cloud Concepts
