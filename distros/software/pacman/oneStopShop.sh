
#!/bin/bash

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

# Install AppImageLauncher from AUR
yay -S appimagelauncher -y

echo "All applications installed successfully!"
