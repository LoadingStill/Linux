#!/bin/bash

# Update package databases
sudo pacman -Sy

# Check if parallel downloads is already set to 8
if ! grep -q '^ParallelDownloads = 8$' /etc/pacman.conf; then
    echo "Setting parallel downloads to 8..."
    sudo sed -i 's/^#ParallelDownloads = 5$/ParallelDownloads = 8/' /etc/pacman.conf
else
    echo "Parallel downloads is already set to 8."
fi

# Update mirrorlist
sudo pacman-mirrors --fasttrack
sudo pacman -Syy

# Update package cache
sudo pacman -Scc

# Update system packages
sudo pacman -Syu

# Update Flatpaks (if Flatpak is installed)
if command -v flatpak &> /dev/null; then
    echo "Updating Flatpaks..."
    flatpak update
else
    echo "Flatpak is not installed."
fi

# Update AppImages (if AppImageLauncher is installed)
if command -v appimagelauncher &> /dev/null; then
    echo "Updating AppImages..."
    appimagelauncher --update
else
    echo "AppImageLauncher is not installed."
fi

# Update AUR packages using yay (if yay is installed)
if command -v yay &> /dev/null; then
    echo "Updating AUR packages..."
    yay -Syu --aur
else
    echo "yay is not installed. Please install it to manage AUR packages."
fi

# Check if user wants to see what was upgraded
read -p "Do you want to see the list of updated packages? (y/n): " print_choice
if [ "$print_choice" == "y" ]; then
    sudo pacman -Q --upgrades
fi

# Check if a reboot is required
if [ -f /var/run/reboot-required ]; then
    read -p "System needs a reboot. Do you want to reboot now? (y/n): " reboot_choice
    if [ "$reboot_choice" == "y" ]; then
        sudo reboot
    fi
fi

# Ask if user wants to remove unnecessary packages
read -p "Do you want to remove unnecessary packages? (y/n): " remove_choice
if [ "$remove_choice" == "y" ]; then
    sudo pacman -Rns $(pacman -Qdtq)
fi

echo "Update script completed."
