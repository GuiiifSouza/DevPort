# DevOps Portfolio Repository

## Introduction

Welcome to my DevOps portfolio! This repository is a comprehensive demonstration of my skills in infrastructure and software development, showcasing various tools and practices used in the DevOps field. Created solely by me, this project covers everything from automated deployments to container orchestration and infrastructure as code.

## Project Overview

This repository is organized into several key directories, each representing different aspects of a DevOps workflow:

### 1. **ansible/**
   - **Purpose:** Automates the process of deploying infrastructure and Kubernetes configurations.
   - **Contents:**
     - **`inventory.ini`:** Defines the inventory for Ansible, including connection settings and target hosts.
     - **`playbook.yml`:** Ansible playbook that automates the execution of Terraform and Kubernetes commands.

### 2. **development/**
   - **Purpose:** This directory contains the source code for the APIs and the user interface (UI) of the applications.
   - **Contents:**
     - **`apis/`:** Contains backend services and APIs.
       - **`health-api/`:** Example implementation of an API, which includes configuration files, source code, and other necessary components.

### 3. **kubernetes/**
   - **Purpose:** Manages Kubernetes configurations for deploying and maintaining applications in a cluster.
   - **Contents:**
     - **`nginx/`:** Configuration files for the Nginx Ingress Controller.
       - **`nginx-deployment.yaml`:** Deployment configuration for the Nginx Ingress Controller.
       - **`nginx-hpa.yaml`:** Configuration for the Horizontal Pod Autoscaler for Nginx.
       - **`nginx-namespace.yaml`:** Namespace configuration for Nginx resources.
       - **`nginx-service.yaml`:** Service definition to expose Nginx.
       - **`nginx-configmap.yaml`:** ConfigMap for managing NGINX configuration dynamically, allowing updates to routing and proxy settings without changing the deployment.

     - **`mariadb/`:** Kubernetes configurations for deploying MariaDB.
       - **`mariadb-namespace.yaml`:** Namespace configuration for MariaDB.
       - **`mariadb-statefulset.yaml`:** StatefulSet configuration to ensure persistence and stable identity for MariaDB pods.
       - **`mariadb-service.yaml`:** Service definition for MariaDB to interact with other components within the cluster.

     - **`health-api/`:** Kubernetes configurations for deploying the Health API.
       - **`.gitignore`:** Ensures sensitive data is not committed to the repository.
       - **`README.md`:** Documentation on setting up and configuring the Health API within the Kubernetes cluster.
       - **`health-api-deployment.yaml`:** Deployment definition for the Health API.
       - **`health-api-hpa.yaml`:** Horizontal Pod Autoscaler configuration for automatic scaling based on resource usage.
       - **`health-api-namespace.yaml`:** Namespace configuration for logically separating Health API resources.
       - **`health-api-service.yaml`:** Service definition to expose the Health API within the cluster.
       - **`kustomization.yaml`:** Kustomize configuration for managing the Health API Kubernetes resources.

### 4. **terraform/**
   - **Purpose:** Contains infrastructure as code (IaC) scripts using Terraform to provision and manage cloud resources.
   - **Contents:**
     - **`main.tf`:** Main configuration file that defines the infrastructure setup, including VPC, Kubernetes cluster, and provider configurations.
     - **`variables.tf`:** Contains the input variables used throughout the Terraform configuration to ensure consistency and flexibility.
     - **`terraform.tfvars`:** Stores the actual values for the variables defined in `variables.tf`, specific to the environment.
     - **modules/:** Directory containing reusable Terraform modules for different components:
       - **`k8s/`:** Manages Kubernetes cluster and node pool resources within GCP.
       - **`provider/`:** Configures the GCP provider settings.
       - **`vpc/`:** Defines the VPC and subnet resources within the GCP project.

## Getting Started

### Prerequisites

- Knowledge of DevOps tools such as Kubernetes, Terraform, Docker, etc.
- Access to a cloud provider (e.g., Google Cloud, AWS) for deploying infrastructure.
- Basic understanding of CI/CD pipelines and infrastructure automation.

### How to Use This Repository

1. Clone the repository and navigate to the main directory.

   ```bash
     git clone https://github.com/GuiiifSouza/DevPort.git
     cd DevPort
   ```

2. Explore each directory to understand the setup and configuration files. Modify the configurations as needed for your specific environment.

3. To automate the setup using Ansible:
  ```bash
    cd ansible
    ansible-playbook -i inventory.ini playbook.yml
  ```

## Conclusion

This portfolio project is an ongoing effort to showcase my capabilities in the DevOps domain. It serves not only as a practical demonstration of my skills but also as a reference for anyone interested in similar DevOps practices. Feel free to explore, provide feedback, or even contribute to the project.

