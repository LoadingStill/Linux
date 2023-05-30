#!/bin/bash

# Install Docker
sudo dnf remove -y docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io

# Install Docker Compose
sudo dnf -y install docker-compose

# Add current user to docker group
sudo usermod -aG docker $USER

# Start Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Check if Docker installation was successful
if [ $? -eq 0 ]; then
    echo "Docker installation successful!"
else
    echo "Docker installation failed."
fi
