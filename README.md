# 🚀 Phoenix Weather App Deployment

This project demonstrates a full DevOps lifecycle for a containerized Python application. I used **The Phoenix Strategy** to move from manual cloud configuration to a fully automated "One-Click" deployment.

## 🏗️ Architecture
- **Infrastructure as Code (IaC):** [Terraform] provisions an AWS EC2 instance, Security Groups, and SSH Key Pairs.
- **Configuration Management:** [Ansible] automates the installation of Docker and configures the remote environment.
- **Containerization:** [Docker] packages a Python Weather App for consistent deployment.

## 🛠️ Tech Stack
- **Cloud:** AWS (EC2, VPC, SG)
- **IaC:** Terraform
- **Automation:** Ansible
- **Containerization:** Docker
- **Language:** Python

## 🚀 How to Run
1. **Provision Infrastructure:**
   ```bash
   cd terraform
   terraform init
   terraform apply -auto-approve
