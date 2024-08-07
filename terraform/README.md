# Terraform GCP Kubernetes Cluster

This project uses Terraform to provision infrastructure on Google Cloud Platform (GCP), creating a VPC, subnet, and a Kubernetes (GKE) cluster with configured Node Pools.

## Project Structure

- **main.tf**: Main file that references modules for creating the VPC, Kubernetes cluster, and provider configuration.
- **terraform.tfvars**: File containing user-specific and environment-specific variables.
- **variables.tf**: Declaration of variables used throughout the project.
- **modules/**: Directory containing reusable modules:
  - **provider/**: Configures the Google Cloud provider.
  - **vpc/**: Configures the VPC and subnet.
  - **k8s/**: Configures the Kubernetes cluster and Node Pools.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- Google Cloud account with permissions to create resources (VPC, Kubernetes, etc.).
- Google Cloud service account key configured.

## Setup

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd terraform
   ```

2. Configure the variables in the `terraform.tfvars` file with appropriate values:
   ```hcl
   project_id = "your-project-id"
   region     = "us-east1"
   zone       = "us-east1-b"
   cluster_name = "dev-port"
   initial_node_count = 1
   min_node_count = 1
   max_node_count = 3
   machine_type = "e2-custom-2-4096"
   disk_size_gb = 25
   disk_type = "pd-ssd"
   network_name = "kubernetes-vpc"
   subnetwork_name = "kubernetes-subnet"
   ip_cidr_range = "10.0.0.0/16"
   node_pool_name = "node-deadpool"
   ```

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Plan the infrastructure changes:
   ```bash
   terraform plan
   ```

5. Apply the changes:
   ```bash
   terraform apply -auto-approve
   ```

## Destroying the Infrastructure

To destroy the created resources:

```bash
terraform destroy -auto-approve
```

## Final Considerations

- Ensure that your GCP quotas are sufficient for the requested resources.
- Check the region and zone configurations to ensure that all resources are provisioned as expected.

## Author

This project was created to provision and manage a Kubernetes infrastructure on GCP using Terraform.
