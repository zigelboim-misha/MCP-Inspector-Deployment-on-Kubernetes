# MCP Inspector Deployment on Kubernetes

## Build the image

```bash
docker build --platform linux/amd64 -t mcp-inspector .
```

## Deploy on Kubernetes

```bash
kubectl apply -f ./templates/k8s-deployment.yaml -n mcp
kubectl apply -f ./templates/k8s-service.yaml -n mcp
```

## Port forwarding

```bash
kubectl port-forward -n mcp service/mcp-inspector-service 8080:8080 9000:9000
```
