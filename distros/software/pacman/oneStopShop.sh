#!/bin/bash

# Uninstall gnome-games packages
sudo pacman -Rs gnome-games gnome-klotski gnome-mahjongg gnome-mines gnome-nibbles gnome-robots gnome-sudoku gnome-taquin gnome-tetravex --noconfirm

# Install flatpak and add flathub repository
sudo pacman -S flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install applications via flatpak
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install flathub com.discordapp.Discord -y

# Install applications via pacman
sudo pacman -S git curl wine wine-mono wine_gecko wine-mono wine-gecko steam -y

# Install yay (if not already installed)
if ! command -v yay &> /dev/null; then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    rm -rf yay
fi

# Install 1Password
curl -sS https://downloads.1password.com/linux/keys/1password.asc | gpg --import
git clone https://aur.archlinux.org/1password.git
cd 1password
makepkg -si
cd ..

# Download and install PyCharm Professional
wget -O pycharm.tar.gz "https://download.jetbrains.com/python/pycharm-professional-2023.2.tar.gz"
tar -xzf pycharm.tar.gz
rm pycharm.tar.gz
sudo mv PyCharm*/ /opt/pycharm
sudo ln -s /opt/pycharm/bin/pycharm.sh /usr/local/bin/pycharm

# Install AppImageLauncher from AUR
yay -S appimagelauncher -y

echo "All applications installed successfully!"
