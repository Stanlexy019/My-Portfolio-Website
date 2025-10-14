# 🚀 Automated Portfolio Website Deployment (AWS + GitHub Actions)

This project demonstrates how I deployed my **static portfolio website** using **AWS S3, CloudFront, and Docker**, with a fully automated **CI/CD pipeline** powered by **GitHub Actions**.

---

##  Overview

This project automates the entire process of deploying my portfolio website to the cloud using modern DevOps practices.

Each time I push updates to the `main` branch, GitHub Actions automatically:

1. Builds a new Docker image from my website files.
2. Pushes the image to **Amazon Elastic Container Registry (ECR)**.
3. Syncs static files to an **AWS S3 bucket** (for hosting).
4. Optionally runs and tests the container build.
5. Confirms the deployment status automatically.

---

##  Tech Stack

- **HTML, CSS, JS** → Frontend (Portfolio Website)
- **Docker** → Containerization
- **AWS ECR** → Container image storage
- **AWS S3** → Static website hosting
- **AWS CloudFront** → CDN for global content delivery
- **GitHub Actions** → CI/CD automation
- **Nginx (Alpine)** → Lightweight web server inside container

---

##  CI/CD Workflow Steps

# Configure AWS Credentials
GitHub Actions authenticates into AWS using secure credentials stored as **GitHub Secrets**:
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

# Build and Push Docker Image
A new Docker image is built and tagged using this command inside the workflow:
```bash
docker build -t my-website .
docker tag my-website:latest 969759464709.dkr.ecr.eu-north-1.amazonaws.com/my-website:
docker push 969759464709.dkr.ecr.eu-north-1.amazonaws.com/my-website
