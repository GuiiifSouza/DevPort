# Kubernetes Network Tunneling Setup

This repository contains configuration files to create network tunnels within a Kubernetes cluster. These setups can be used to forward network traffic from your local machine to services inside a Kubernetes cluster using simple tools like SSH and socat.

## Files

### 1. `ssh-pod.yaml`
- **Description**: A Kubernetes Pod configuration running an SSH server (based on Ubuntu).
- **Usage**: 
  - Deploy this Pod in your cluster and use `kubectl port-forward` to establish an SSH tunnel.
  - Example:
    ```bash
    kubectl apply -f ssh-pod.yaml
    kubectl port-forward pod/ssh-pod 2222:22
    sshuttle -r user@localhost:2222 10.0.0.0/8
    ```

### 2. `socat-pod.yaml`
- **Description**: A Kubernetes Pod configuration running socat, a versatile networking tool.
- **Usage**: 
  - Deploy this Pod in your cluster and use `kubectl port-forward` to forward local ports to the cluster network.
  - Example:
    ```bash
    kubectl apply -f socat-pod.yaml
    kubectl port-forward pod/tunnel-pod 8080:8080
    ```

## Prerequisites

- A Kubernetes cluster where you can deploy Pods.
- `kubectl` configured to access your cluster.
- SSH client installed locally for SSH tunneling.
- `sshuttle` installed locally for network proxying.

## Steps to Use

1. Deploy the desired Pod configuration using `kubectl apply -f <filename.yaml>`.
2. Use `kubectl port-forward` to forward the desired ports from your local machine to the Kubernetes Pod.
3. Access the services in the Kubernetes cluster through the forwarded ports.

These configurations are useful for testing, debugging, and accessing internal services in a Kubernetes cluster from your local development environment.

