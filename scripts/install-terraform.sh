#!/bin/bash
export arch=$(uname -m)
export tf_version="1.2.3"

# Terraform 
echo "Installing Terraform"
if [ "$arch" = "aarch64" ]; then
    export TERRAFORM_URL="https://releases.hashicorp.com/terraform/${tf_version}/terraform_${tf_version}_linux_arm64.zip"
else
    export TERRAFORM_URL="https://releases.hashicorp.com/terraform/${tf_version}/terraform_${tf_version}_linux_amd64.zip"
fi 

curl "$TERRAFORM_URL" -o "terraform.zip"
unzip terraform.zip
sudo mv terraform /usr/local/bin
rm -f terraform*
terraform --version