#!/bin/bash

# Define the paths to your Kubernetes manifest files
NGINX_CANARY_YAML="nginx-canary.yml"
NGINX_STABLE_YAML="nginx-stable.yml"
NGINX_SERVICE_YAML="nginx-service.yml"
NGINX_CONFIGMAP_CANARY_YAML="nginx-configmap-canary.yml"
NGINX_CONFIGMAP_STABLE_YAML="nginx-configmap-stable.yml"

# Apply the Kubernetes manifests
echo "Applying NGINX ConfigMap for Canary..."
kubectl apply -f $NGINX_CONFIGMAP_CANARY_YAML

sleep 5

echo "Applying NGINX ConfigMap for Stable..."
kubectl apply -f $NGINX_CONFIGMAP_STABLE_YAML

sleep 5

echo "Applying NGINX Canary Deployment..."
kubectl apply -f $NGINX_CANARY_YAML

sleep 5

echo "Applying NGINX Stable Deployment..."
kubectl apply -f $NGINX_STABLE_YAML

sleep 5

echo "Applying NGINX Service..."
kubectl apply -f $NGINX_SERVICE_YAML

echo "All Kubernetes resources applied successfully."