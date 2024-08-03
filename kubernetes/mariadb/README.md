# MariaDB Kubernetes Configuration

This directory contains configuration files for deploying MariaDB in a Kubernetes cluster.

## Files

- **`kustomization.yaml`**: Main Kustomize file to manage and apply resources.
- **`mariadb-service.yaml`**: Service configuration to expose MariaDB within the cluster.
- **`mariadb-statefulset.yaml`**: StatefulSet configuration to ensure persistent storage for MariaDB.
- **`mariadb-configmap.yaml`** _(ignored by Git)_: ConfigMap for non-sensitive MariaDB configurations like database name and user. Create this file locally with the necessary settings.
- **`mariadb-secret.yaml`** _(ignored by Git)_: Secret for sensitive information such as passwords. This file should also be created locally and securely.

## Example Configuration

### ConfigMap (`mariadb-configmap.yaml`)

Here is an example of how your `mariadb-configmap.yaml` should look:

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: mariadb-config
  namespace: mariadb
data:
  MYSQL_DATABASE: mydatabase
  MYSQL_USER: user
```

### Secret (mariadb-secret.yaml)

Here is an example of how your mariadb-secret.yaml should look:

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: mariadb-secret
  namespace: mariadb
type: Opaque
data:
  MYSQL_ROOT_PASSWORD: secret-password  # base64 encoded password (e.g., "secret-password")
  MYSQL_PASSWORD: secret-password       # base64 encoded password (e.g., "secret-password")
```

To encode a password in base64, you can use the following command:

```bash
echo -n "secret-password" | base64
```

Replace `secret-password` with your actual password.

## Usage

Ensure `mariadb-configmap.yaml` and `mariadb-secret.yaml` are properly configured and then apply the configurations:

```bash
kubectl apply -k .
```

