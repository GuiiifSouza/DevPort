# Kubernetes Cluster Configuration

This directory contains the configuration files necessary for deploying and managing a Kubernetes cluster. The configurations include resources such as Deployments, Services, Ingress Controllers, and autoscaling policies.

## Project Structure

- `kustomization.yaml`: The main Kustomize file that defines and manages the Kubernetes resources in this directory.
- `nginx/`: Directory containing the configurations for the Nginx Ingress Controller, which acts as the entry point for the cluster.
  - `nginx-deployment.yaml`: Defines the Deployment for the Nginx Ingress Controller.
  - `nginx-hpa.yaml`: Configures the Horizontal Pod Autoscaler for Nginx, allowing automatic adjustment of the number of pods based on load.
  - `nginx-namespace.yaml`: Creates the `nginx` namespace dedicated to the Ingress Controller.
  - `nginx-service.yaml`: Defines the Service to expose Nginx externally to the cluster.
- `README.md`: This documentation file, explaining the structure and usage of the configurations in this directory.

## Getting Started

### Prerequisites

- Kubernetes configured and accessible via `kubectl`.
- `kubectl` and `kustomize` installed on your local machine.
- Access to the Kubernetes cluster where the configurations will be applied.

### Usage

#### Apply Configurations

To apply all the configurations in this directory to your Kubernetes cluster, use the following command:

```bash
kubectl apply -k .
```

This command uses Kustomize to process the kustomization.yaml file and apply all the specified resources.

#### Modular Directory Structure

This project is structured to be modular, with different components organized into dedicated subdirectories. Each subdirectory may have its own kustomization.yaml to facilitate maintenance and reuse of configurations.

- nginx/: Contains the specific configurations for the Nginx Ingress Controller. The configurations in this directory ensure that all external traffic is managed by Nginx before being routed to other services within the cluster.

### Customize Configurations

You can customize any of the resources by editing the corresponding YAML files. If you need to add new services or components to the cluster, create new directories or files within the existing structure and add the necessary references in the kustomization.yaml.

## Important Notes
- Namespace: Ensure that the necessary namespaces are created, or that your configurations include the creation of the appropriate namespaces.
- Security: Verify that the cluster's security policies, such as Network Policies and Role-Based Access Control (RBAC), are configured as needed for your applications.
- Configuration Review: Before applying configurations to the cluster, carefully review the YAML files to ensure that all specifications are correct and aligned with project requirements.

