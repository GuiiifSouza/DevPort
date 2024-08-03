# Health API Kubernetes Deployment

This repository contains the Kubernetes manifests to deploy the Health API application using Docker and Kubernetes.

## Prerequisites

- Kubernetes cluster
- `kubectl` configured
- Docker image `guiiifsouza/health-api:1.0` available on Docker Hub

## Setup

### 1. Create Kubernetes Namespace and Deploy the Application

First, apply the `health-api-namespace.yaml` to create the `health-api` namespace:

```
kubectl apply -f health-api-namespace.yaml
```

### 2. Create Kubernetes Secrets

To avoid committing sensitive information to the repository, the Secret manifest file should be ignored. You need to create the Secret manually using the following commands:

```
kubectl apply -f health-api-secret.yaml
```

### 3. Deploy the Application and Service

Once the Secret is created, you can deploy the application and the service:

```
kubectl apply -f health-api-deployment.yaml
kubectl apply -f health-api-service.yaml
```

This will:
- Deploy the Health API application in the `health-api` namespace.
- Create a `ClusterIP` service named `health-api-service` for internal access.

### 4. Configure Horizontal Pod Autoscaler (HPA)

To enable autoscaling based on CPU and memory utilization, apply the HPA configuration:

```
kubectl apply -f health-api-hpa.yaml
```

### 6. Scaling the Application

To scale the deployment, use the following command:

```
kubectl scale deployment health-api-deployment --replicas=<number_of_replicas> -n health-api
```

Replace `<number_of_replicas>` with the desired number of replicas.

### 7. Cleanup

To remove the deployment, service, and associated resources, use:

```

kubectl delete -k kustomization.yaml
```

## Contributing

Feel free to contribute to this repository by opening issues or submitting pull requests.

## License

This project is licensed under the MIT License.
