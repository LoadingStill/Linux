#!/bin/bash

#update
sudo apt update

#needed pieces to make this work
sudo apt install curl -y
sudo apt install python3-pip -y


#AMD GPU
#32 bit suppoort
sudo dpkg --add-architecture i386 && sudo apt update
sudo apt install libglx-mesa0:i386 mesa-vulkan-drivers:i386 libgl1-mesa-dri:i386 -y

#gpu drivers (better)
sudo apt-get install firmware-amd-graphics libgl1-mesa-dri libglx-mesa0 mesa-vulkan-drivers xserver-xorg-video-all -y 

#gpu monitoring
sudo apt install radeontop -y

#gpu fan control
sudo pip3 install amdgpu-fan -y

#packages
sudo apt install steam thunderbird obs-studio nala qbittorrent

#1password
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg

 sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
 curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
 
 sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
 curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg
 
 sudo apt update && sudo apt install 1password -y
 
 
#app removal
sudo apt-get purge gnome-2048 gnome-chess gnome-games gnome-klotski gnome-mahjongg gnome-mines gnome-nibbles gnome-robots gnome-sudoku gnome-taquin gnome-tetravex -y
sudo apt-get purge aisleriot evolution five-or-more four-in-a-row lightsoff quadrapassel swell-foop tali totem hitori iagno -y
