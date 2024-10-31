# Use a lightweight base image
FROM ubuntu:latest
COPY . .
# Set environment variables
ENV TERRAFORM_VERSION=1.5.7
ENV DBTCLOUDTF_VERSION=0.8.0

# Install dependencies
RUN apt-get update && \
    apt-get install -y wget unzip && \
    rm -rf /var/lib/apt/lists/*

# Download and install Terraform
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN wget https://github.com/dbt-labs/dbtcloud-terraforming/releases/download/v${DBTCLOUDTF_VERSION}/dbtcloud-terraforming_${DBTCLOUDTF_VERSION}_linux_amd64.tar.gz && \
    tar -xzf dbtcloud-terraforming_${DBTCLOUDTF_VERSION}_linux_amd64.tar.gz && \
    mv dbtcloud-terraforming /usr/local/bin/ && \
    rm dbtcloud-terraforming_${DBTCLOUDTF_VERSION}_linux_amd64.tar.gz

# Verify installation
RUN terraform --version && dbtcloud-terraforming version