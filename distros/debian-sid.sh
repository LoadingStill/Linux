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
sudo apt install steam-installer thunderbird obs-studio nala qbittorrent wine 'gnome-wine-icon-theme' winetricks -y
cd Downloads/
wget https://discord.com/api/download?platform=linux&format=deb
cd

#1password
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg

sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
 
sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg
 
sudo apt update && sudo apt install 1password -y
 
#protonPVN
cd Downloads/
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3_all.deb
#http://ftp.us.debian.org/debian/pool/main/liba/libappindicator/gir1.2-appindicator3-0.1_0.4.92-7_amd64.deb #for tray icon, this is an old package do not use?
cd
sudo apt-get update
sudo apt-get install protonvpn gnome-shell-extension-appindicator -y #gir1.2-appindicator3-0.1 #this is an OLD package use the deb above
#if you are asking about your display then use the output of the below command
#grep '/usr/s\?bin' /etc/systemd/system/display-manager.service
 
#app removal
sudo apt-get purge gnome-2048 gnome-chess gnome-games gnome-klotski gnome-mahjongg gnome-mines gnome-nibbles gnome-robots gnome-sudoku gnome-taquin gnome-tetravex -y
sudo apt-get purge aisleriot evolution five-or-more four-in-a-row lightsoff quadrapassel swell-foop tali totem hitori iagno -y


#NAS Mount nfs
sudo apt install nfs-common

sudo mkdir /mnt/ryoung
sudo mkdir /mnt/games
sudo mkdir /mnt/proxmox
sudo mkdir /mnt/media
sudo mkdir /mnt/HowToIT

sudo sh -c "echo '10.1.1.26:/mnt/servarr/ryoung  /mnt/ryoung  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> /etc/fstab"
sudo sh -c "echo '10.1.1.26:/mnt/servarr/games  /mnt/games  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> /etc/fstab"
sudo sh -c "echo '10.1.1.26:/mnt/servarr/proxmox  /mnt/proxmox  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> /etc/fstab"
sudo sh -c "echo '10.1.1.26:/mnt/servarr/HowToIT  /mnt/HowToIT  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> /etc/fstab"
sudo sh -c "echo '10.1.1.26:/mnt/servarr/media  /mnt/media  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> /etc/fstab"

sudo systemctl daemon-reload


sudo reboot
