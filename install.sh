#!/bin/bash
export arch=$(uname -m)

echo "Installing apt packages"
apt-get -qq update
apt-get -qq install sudo apt-utils net-tools git htop nano wget curl unzip build-essential make -y
apt-get -qq upgrade -y
apt-get -qq autoremove

# AWS CLI
echo "Installing AWS CLI"
if [ "$arch" = "aarch64" ]; then
    export AWS_URL="https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip"
else
    export AWS_URL="https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"
fi 

curl "$AWS_URL" -o "awscliv2.zip"
unzip -q awscliv2.zip
sudo ./aws/install
rm awscliv2.zip

aws --version

mkdir ~/.aws

# Terraform 
echo "Installing Terraform"
if [ "$arch" = "aarch64" ]; then
    export TERRAFORM_URL="https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_linux_arm64.zip"
else
    export TERRAFORM_URL="https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_linux_amd64.zip"
fi 

curl "$TERRAFORM_URL" -o "terraform.zip"
unzip terraform.zip
sudo mv terraform /usr/local/bin
rm -f terraform*
terraform --version

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