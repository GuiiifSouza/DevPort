# DevOps Portfolio Repository

## Introduction

Welcome to my DevOps portfolio! This repository is a comprehensive demonstration of my skills in infrastructure and software development, showcasing various tools and practices used in the DevOps field. Created solely by me, this project covers everything from automated deployments to container orchestration and infrastructure as code.

## Project Overview

This repository is organized into several key directories, each representing different aspects of a DevOps workflow:

### 1. **development/**
   - **Purpose:** This directory contains the source code for the APIs and the user interface (UI) of the applications.
   - **Contents:**
     - **`apis/`:** Contains backend services and APIs.
       - **`health-api/`:** Example implementation of an API, which includes configuration files, source code, and other necessary components.
     - **`ui/`:** Stores all front-end resources such as HTML, CSS, images, and shared assets used across different applications.

### 2. **kubernetes/**
   - **Purpose:** Manages Kubernetes configurations for deploying and maintaining applications in a cluster.
   - **Contents:**
     - **`nginx/`:** Configuration files for the Nginx Ingress Controller.
       - **`nginx-deployment.yaml`:** Deployment configuration for the Nginx Ingress Controller.
       - **`nginx-hpa.yaml`:** Configuration for the Horizontal Pod Autoscaler for Nginx.
       - **`nginx-namespace.yaml`:** Namespace configuration for Nginx resources.
       - **`nginx-service.yaml`:** Service definition to expose Nginx.
     - **`mariadb/`:** Kubernetes configurations for deploying MariaDB.
       - **`mariadb-namespace.yaml`:** Namespace configuration for MariaDB.
       - **`mariadb-statefulset.yaml`:** StatefulSet configuration to ensure persistence and stable identity for MariaDB pods.
       - **`mariadb-service.yaml`:** Service definition for MariaDB to interact with other components within the cluster.

### 3. **terraform/**
   - **Purpose:** Contains infrastructure as code (IaC) scripts using Terraform to provision cloud resources.
   - **Contents:**
     - **`main.tf`:** Main configuration file that defines the infrastructure setup.
     - **`variables.tf`:** Defines input variables used in the Terraform configuration.
     - **`terraform.tfstate` and `terraform.tfstate.backup`:** State files that track the resources managed by Terraform.
     - **`terraform.tfvars`:** Contains the values for the variables defined in `variables.tf`.

## Getting Started

### Prerequisites

- Knowledge of DevOps tools such as Kubernetes, Terraform, Docker, etc.
- Access to a cloud provider (e.g., Google Cloud, AWS) for deploying infrastructure.
- Basic understanding of CI/CD pipelines and infrastructure automation.

### How to Use This Repository

1. Clone the repository and navigate to the main directory.

   ```bash
     git clone https://github.com/seunomeusuario/DevPort.git
     cd DevPort
   ```

2. Explore each directory to understand the setup and configuration files. Modify the configurations as needed for your specific environment.

3. Initialize and apply the Terraform configurations to set up the necessary cloud resources.

  ```bash
    terraform init
    terraform apply
  ```

4. Use `kubectl` to apply the Kubernetes resources found in the `kubernetes/` directory.

  ```bash
    kubectl apply -k ./kubernetes/
  ```

## Conclusion

This portfolio project is an ongoing effort to showcase my capabilities in the DevOps domain. It serves not only as a practical demonstration of my skills but also as a reference for anyone interested in similar DevOps practices. Feel free to explore, provide feedback, or even contribute to the project.
