#!/bin/bash
export arch=$(uname -m)

# Kubectl
echo "Installing Kubectl"
if [ "$arch" = "aarch64" ]; then
    export KUBECTL_URL="https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/arm64/kubectl"
else
    export KUBECTL_URL="https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
fi

curl -s -LO "$KUBECTL_URL"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client
