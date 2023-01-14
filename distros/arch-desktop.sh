#!/bin/bash

# The Goal is to have a working Arch Linux Desktop when this script is done running.

sudo pacman -Syy

sudo pacman -S thunderbird kmymoney steam discord flatpak libreoffice-still firefox netfetch nano lutris wine winetricks packagekit-qt5 fwupd -y

flatpak install flathub com.github.iwalton3.jellyfin-media-player   #jellyfin player
flatpak install flathub org.kde.kdenlive                            #kdenlive
flatpak install flathub org.kde.krita                               #krita
flatpak install flathub com.obsproject.Studio                       #obs-studio
flatpak install flathub com.visualstudio.code                       #Visual Studio Code
flatpak install flathub org.prismlauncher.PrismLauncher             #minecraft
flatpak install flathub org.qbittorrent.qBittorrent                 #qbittorrent
flatpak install flathub net.pcsx2.PCSX2                             #PCSX2

