#!/bin/bash
export arch=$(uname -m)

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