#!/bin/bash
echo "########################  docker installing  #######################"
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker



#remove docker from system to install offical docker
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-compose-plugin

#update system
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release


sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg


echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


#set permissions for keys
sudo chmod a+r /etc/apt/keyrings/docker.gpg
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
 

#start docker and start docker on boot
sudo service docker start
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
#stop docker from starting on boot
#sudo systemctl disable docker.service
#sudo systemctl disable containerd.service

#Troubleshooting:

#if you want to test that this works uncomment the lines below to test
#sudo docker run hello-world
#sudo docker run --name hello-world-container hello-world
#sudo docker rm hello-world-container

#if there is a permission error due to sudo being used to run docker before $USER was added to docker group run the commands below
#sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
#sudo chmod g+rwx "$HOME/.docker" -R


#resources
#https://docs.docker.com/engine/install/linux-postinstall/
echo "########################  docker  installed  #######################"
