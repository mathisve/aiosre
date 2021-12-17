#!/bin/bash
export arch=$(uname -m)

# AWS CLI
echo "Installing AWS CLI"
if [ "$arch" = "aarch64" ]; then
    export AWS_URL="https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip"
else
    export AWS_URL="https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"
fi 

curl "$AWS_URL" -o "awscliv2.zip"
unzip -q awscliv2.zip
mkdir ~/.aws
sudo ./aws/install
rm awscliv2.zip
aws --version
