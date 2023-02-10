#!/bin/bash

# The Goal is to have a working Arch Linux Desktop when this script is done running.

sudo echo 'ILoveCandy' >> sudo /etc/pacman.conf
sudo echo 'VerbosePkgLists' >> sudo /etc/pacman.conf
sudo echo 'ParallelDownloads = 15' >> sudo /etc/pacman.conf

sudo pacman -Syy

sudo pacman -S thunderbird kmymoney steam discord flatpak libreoffice-still firefox netfetch nano lutris wine winetricks packagekit-qt5 fwupd nfs-utils -y

flatpak install flathub com.github.iwalton3.jellyfin-media-player -y  #jellyfin player
#flatpak install flathub org.kde.kdenlive                          -y  #kdenlive
#flatpak install flathub org.kde.krita                             -y  #krita
flatpak install flathub com.obsproject.Studio                     -y  #obs-studio
flatpak install flathub com.visualstudio.code                     -y  #Visual Studio Code
flatpak install flathub org.prismlauncher.PrismLauncher           -y  #minecraft
flatpak install flathub org.qbittorrent.qBittorrent               -y  #qbittorrent
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

sudo echo '10.1.1.26:/mnt/servarr/ryoung  /mnt/ryoung  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> sudo /etc/fstab
sudo echo '10.1.1.26:/mnt/servarr/games  /mnt/games  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> sudo /etc/fstab
sudo echo '10.1.1.26:/mnt/servarr/proxmox  /mnt/proxmox  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> sudo /etc/fstab
sudo echo '10.1.1.26:/mnt/servarr/HowToIT  /mnt/HowToIT  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> sudo /etc/fstab
sudo echo '10.1.1.26:/mnt/servarr/media  /mnt/media  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> sudo /etc/fstab


sudo mount -a
sudo systemctl daeom-reload

cd ~/Downloads
curl -sS https://downloads.1password.com/linux/keys/1password.asc | gpg --import
git clone https://aur.archlinux.org/1password.git
cd 1password
makepkg -si
cd
