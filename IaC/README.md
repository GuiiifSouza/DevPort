# Infrastructure as Code (IaC) Project

This repository contains Terraform configurations for setting up and managing Google Kubernetes Engine (GKE) clusters on Google Cloud Platform (GCP). The project automates the deployment and management of Kubernetes clusters, including node pools, autoscaling, and the creation of a dedicated Virtual Private Cloud (VPC) network for the cluster.

## Project Structure
- main.tf: The primary Terraform configuration file that defines the infrastructure resources.
- variables.tf: Defines input variables used across the Terraform configuration.
- terraform.tfvars: Contains the values for the input variables. (Sensitive information should be stored here and not committed to version control).
- config/: Directory for storing configuration files such as service account keys.
- terraform.tfstate: Tracks the state of the infrastructure managed by Terraform. (Automatically generated, should not be edited manually).
- .terraform/: Directory containing Terraform's internal files and cache.
- README.md: Documentation for the project.
- .gitignore: Specifies which files and directories should be ignored by Git.

## Getting Started

### Prerequisites
- Terraform installed on your local machine.
- A Google Cloud Platform project with the necessary APIs enabled.
- Service account key file with the required permissions to manage GKE resources.

## Usage

### Initialize the Terraform working directory:

```bash
terraform init
```

### Review the plan:

Before applying changes, review what Terraform plans to do:

```bash
terraform plan
```

### Apply the configuration:

Apply the changes to create/update the infrastructure:

```bash
terraform apply
```

### Destroy the infrastructure:

If you need to delete the resources:

```bash
terraform destroy
```

## Important Notes
- This Terraform configuration creates a dedicated VPC network specifically for the Kubernetes cluster. This isolation ensures that the cluster does not interfere with existing networks or projects in the GCP environment.
- Ensure that the terraform.tfvars file contains the correct and sensitive information before running any Terraform commands.
- Do not commit the terraform.tfstate file, terraform.tfvars, or any other sensitive information to version control.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

