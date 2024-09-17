#!/bin/bash

NAMESPACE="your-namespace"


echo "Applying service configuration..."
kubectl apply -f service.yaml -n $NAMESPACE

sleep 10

echo "Applying rollout configuration..."
kubectl apply -f rollout.yaml -n $NAMESPACE

sleep 10

echo "Applying ingress configuration..."
kubectl apply -f ingress.yaml -n $NAMESPACE

sleep 10

echo "Getting pods information..."
kubectl get pods -o wide -n $NAMESPACE
