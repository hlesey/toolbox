# Toolbox/Debug Container

## Build

```bash
make build
```

## Deploy in Kubernetes

```bash
kubectl run --image=ghcr.io/hlesey/toolbox toolbox
kubectl exec -it toolbox -- bash
```
