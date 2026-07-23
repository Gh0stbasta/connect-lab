FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt-get update \
    && apt-get install -y \
    curl \
    unzip \
    jq \
    git

RUN curl -fsSL https://releases.hashicorp.com/terraform/1.13.0/terraform_1.13.0_linux_amd64.zip -o terraform.zip \
    && unzip terraform.zip \
    && mv terraform /usr/local/bin/ \
    && rm terraform.zip