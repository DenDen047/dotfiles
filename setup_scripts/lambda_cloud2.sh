#!/bin/bash

# System Assumptions
# - Ubuntu 22.04
# - NVIDIA GPU
# - Docker

# Nvidia-Docker after reboot
# https://lambda.ai/blog/set-up-a-tensorflow-gpu-docker-container-using-lambda-stack-dockerfile
sudo apt-get update
export NVIDIA_CONTAINER_TOOLKIT_VERSION=1.17.8-1
  sudo apt-get install -y \
      nvidia-container-toolkit=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
      nvidia-container-toolkit-base=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
      libnvidia-container-tools=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
      libnvidia-container1=${NVIDIA_CONTAINER_TOOLKIT_VERSION}
sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker
docker run --rm --runtime=nvidia --gpus all ubuntu nvidia-smi