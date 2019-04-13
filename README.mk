# Toolbox/Debug Container

## Build

```
make build
```

## Deploy in Kubernetes

``` 
kubectl apply -f k8s-toolbox.yaml
kubectl exec -it toolbox-0 bash
```