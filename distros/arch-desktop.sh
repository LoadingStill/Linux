#!/bin/bash

# The Goal is to have a working Arch Linux Desktop when this script is done running.

sudo echo 'ILoveCandy' >> sudo /etc/pacman.conf
sudo echo 'VerbosePkgLists' >> sudo /etc/pacman.conf
sudo echo 'ParallelDownloads = 15' >> sudo /etc/pacman.conf

sudo pacman -Syy

yes | sudo pacman -S thunderbird kmymoney steam discord flatpak libreoffice-still firefox neofetch nano lutris wine winetricks packagekit-qt5 fwupd nfs-utils git
#thunderbird is an email and calender client
#kmymoney is a budgeting tool
#steam is for gaming
#discord is for communication
#flatpak is a different application package type that allows you to download and change packages on your system but the flatpak application is not effected because it has all dependencies in its own area
#libreoffice-still is a office 265 replacement minus the cloud storage
#firefox is your web-browser
#neofetch is to show off your new arch install
#nano is my perfered text edditor
#lutris helps with running .exe applications
#wine helps with running .exe applications
#winetricks adds tools for wine
#packageKit-qt5 is a system designed to make installing and updating software on your computer easier.
#fwupd is an open-source daemon for managing the installation of firmware updates on Linux-based systems, developed by GNOME maintainer Richard Hughes.
#nfs-utils lets you create nfs shares or mount a nfs share
#git lets you close from git based webplatforms



flatpak install flathub com.github.iwalton3.jellyfin-media-player  -y  #jellyfin player
#flatpak install flathub org.kde.kdenlive                          -y  #kdenlive
#flatpak install flathub org.kde.krita                             -y  #krita
flatpak install flathub com.obsproject.Studio                      -y  #obs-studio
flatpak install flathub com.visualstudio.code                      -y  #Visual Studio Code
flatpak install flathub org.prismlauncher.PrismLauncher            -y  #minecraft
flatpak install flathub org.qbittorrent.qBittorrent                -y  #qbittorrent
#flatpak install flathub net.pcsx2.PCSX2                           -y  #PCSX2

#touch /Desktop/update.sh
#sudo echo 'sudo pacman -Syu -y' >> /Desktop/update.sh
#sudo echo 'flatpak update -y' >> /Desktop/update.sh

sudo mkdir /mnt/ryoung
sudo mkdir /mnt/games
sudo mkdir /mnt/proxmox
sudo mkdir /mnt/homelab
sudo mkdir /mnt/media
sudo mkdir /mnt/HowToIT

sudo echo '10.1.1.26:/mnt/servarr/ryoung  /mnt/ryoung  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> sudo tee -a /etc/fstab
sudo echo '10.1.1.26:/mnt/servarr/games  /mnt/games  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> sudo tee -a /etc/fstab
sudo echo '10.1.1.26:/mnt/servarr/proxmox  /mnt/proxmox  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> sudo tee -a /etc/fstab
sudo echo '10.1.1.26:/mnt/servarr/HowToIT  /mnt/HowToIT  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> sudo tee -a /etc/fstab
sudo echo '10.1.1.26:/mnt/servarr/media  /mnt/media  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> sudo tee -a /etc/fstab


sudo mount -a
sudo systemctl daeom-reload

cd ~/Downloads
curl -sS https://downloads.1password.com/linux/keys/1password.asc | gpg --import
git clone https://aur.archlinux.org/1password.git
cd 1password
makepkg -si
cd




## yay
#yes | sudo pacman -S git #already installed uncomment ONLY if the commands do not run
cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R tecmint:tecmint ./yay-git
cd yay-git
makepkg -si
#yay -Syu #this is the update command for yay (NO SUDO), this will upgrade the system then upgrade the aur packages
#yay -Syu --aur #this will upgrade aur packages only, NO SUDO
