#!/bin/bash

# Start the containers on boot
sudo systemctl enable docker

# Run the containers
sudo docker run -d --name sonarr sonarr
sudo docker run -d --name lidarr lidarr
sudo docker run -d --name radarr radarr
sudo docker run -d --name readarr readarr
sudo docker run -d --name prowlarr prowlarr
sudo docker run -d --name qbittorrent qbittorrent
sudo docker run -d --name jellyfin jellyfin
sudo docker run -d --name sabnzbd sabnzbd
sudo docker run -d --name nginx-proxy-manager nginx-proxy-manager
sudo docker run -d --name portainer portainer
sudo docker run -d --name heimdall heimdall
sudo docker run -d --name home-assistant home-assistant
sudo docker run -d --name metube metube
sudo docker run -d --name uptime-kuma uptime-kuma

# Check if container creation was successful
if [ $? -eq 0 ]; then
    echo "Containers installed successfully!"
else
    echo "Failed to install containers."
fi
