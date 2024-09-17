#!/bin/bash

OS=$(uname | tr '[:upper:]' '[:lower:]')

case $OS in
  darwin)
    PLUGIN_URL="https://github.com/argoproj/argo-rollouts/releases/latest/download/kubectl-argo-rollouts-darwin-amd64"
    ;;
  linux)
    PLUGIN_URL="https://github.com/argoproj/argo-rollouts/releases/latest/download/kubectl-argo-rollouts-linux-amd64"
    ;;
  *)
    echo "Unsupported OS: $OS"
    exit 1
    ;;
esac

echo "Downloading Argo Rollouts Kubectl plugin..."
curl -LO $PLUGIN_URL

echo "Making the binary executable..."
chmod +x ./kubectl-argo-rollouts*

echo "Moving the binary to /usr/local/bin/"
sudo mv ./kubectl-argo-rollouts* /usr/local/bin/kubectl-argo-rollouts

echo "Verifying installation..."
oc argo rollouts version

