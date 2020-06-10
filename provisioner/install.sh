#!/bin/bash

set -x

mkdir /opt/build
cd /opt/build

# Install terraform
TERRA_ZIP=terraform_${TERRAFORM_VERSION}_linux_amd64.zip
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/${TERRA_ZIP}
unzip ./${TERRA_ZIP}
mv terraform /usr/bin/terraform
chmod +x /usr/bin/terraform
rm ${TERRA_ZIP}

# Install terragrunt
wget https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64
mv terragrunt_linux_amd64 /usr/bin/terragrunt
chmod +x /usr/bin/terragrunt
