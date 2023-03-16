#!/bin/sh

# Check if the user has root privileges
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root. Please try again with sudo or as root user."
    exit 1
fi

# Check for Nvidia GPUs
if lspci | grep -q NVIDIA; then
    echo "Nvidia GPU detected"
    apt update
    apt install -y nvidia-driver
    echo "Nvidia driver installed successfully"
# Check for AMD GPUs
elif lspci | grep -q AMD; then
    echo "AMD GPU detected"
    apt update
    apt install -y amdgpu
    echo "AMD driver installed successfully"
else
    echo "No supported GPU detected"
fi
