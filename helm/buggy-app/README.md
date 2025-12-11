# Buggy App Helm Chart

This Helm chart deploys the buggy application to a Kubernetes cluster.

## Prerequisites

- Kubernetes 1.19+
- Helm 3.0+

## Installation

### Install with default values:
```bash
helm install buggy-app ./helm/buggy-app
```

### Install with custom values:
```bash
helm install buggy-app ./helm/buggy-app -f my-values.yaml
```

### Install with specific values:
```bash
helm install buggy-app ./helm/buggy-app \
  --set image.repository=your-registry/your-image \
  --set replicaCount=3 \
  --set service.type=LoadBalancer
```

## Upgrading

```bash
helm upgrade buggy-app ./helm/buggy-app
```

## Uninstalling

```bash
helm uninstall buggy-app
```

## Configuration

The following table lists the configurable parameters and their default values:

| Parameter | Description | Default |
|-----------|-------------|---------|
| `replicaCount` | Number of replicas | `1` |
| `image.repository` | Container image repository | `767398029096.dkr.ecr.us-east-1.amazonaws.com/asg` |
| `image.pullPolicy` | Image pull policy | `Always` |
| `image.tag` | Image tag | `""` |
| `service.type` | Kubernetes service type | `LoadBalancer` |
| `service.port` | Service port | `80` |
| `service.targetPort` | Container port | `8080` |
| `ingress.enabled` | Enable ingress | `false` |
| `resources` | Resource limits and requests | `{}` |
| `autoscaling.enabled` | Enable horizontal pod autoscaling | `false` |
| `autoscaling.minReplicas` | Minimum replicas for HPA | `1` |
| `autoscaling.maxReplicas` | Maximum replicas for HPA | `100` |
| `autoscaling.targetCPUUtilizationPercentage` | Target CPU utilization | `80` |

## Examples

### Deploy with 3 replicas:
```bash
helm install buggy-app ./helm/buggy-app --set replicaCount=3
```

### Deploy with custom image:
```bash
helm install buggy-app ./helm/buggy-app \
  --set image.repository=my-registry/my-image \
  --set image.tag=v1.0.0
```

### Deploy with resource limits:
```bash
helm install buggy-app ./helm/buggy-app \
  --set resources.limits.cpu=500m \
  --set resources.limits.memory=512Mi \
  --set resources.requests.cpu=250m \
  --set resources.requests.memory=256Mi
```

### Enable autoscaling:
```bash
helm install buggy-app ./helm/buggy-app \
  --set autoscaling.enabled=true \
  --set autoscaling.minReplicas=2 \
  --set autoscaling.maxReplicas=10
```

### Enable ingress:
```bash
helm install buggy-app ./helm/buggy-app \
  --set ingress.enabled=true \
  --set ingress.hosts[0].host=buggy.example.com
```

