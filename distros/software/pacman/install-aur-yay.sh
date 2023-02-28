#!/bin/bash
mkdir ~/Downloads/aur
cd ~/Downloads/aur
pacman -S --needed git base-devel               # installs git and base-devel
git clone https://aur.archlinux.org/yay.git     # clones the yay git hub
cd yay                                          # change directory to yay
makepkg -si                                     # make package -si
