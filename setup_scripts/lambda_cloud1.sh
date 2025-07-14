#!/bin/bash

# System Assumptions
# - Ubuntu 22.04
# - NVIDIA GPU
# - Docker

# Update
sudo apt update
sudo apt upgrade -y

# Docker setup
sudo usermod -aG docker $USER

# ====== NVIDIA-DOCKER =======
# https://lambda.ai/blog/set-up-a-tensorflow-gpu-docker-container-using-lambda-stack-dockerfile
# https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html
LAMBDA_REPO=$(mktemp) && \
	wget -O${LAMBDA_REPO} https://lambdalabs.com/static/misc/lambda-stack-repo.deb && \
	sudo dpkg -i ${LAMBDA_REPO} && rm -f ${LAMBDA_REPO} && \
	sudo apt-get update && sudo apt-get install -y lambda-stack-cuda
sudo reboot
