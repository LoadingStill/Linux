#!/bin/bash
sudo pacman -Syy
#sudo pacman -S archlinux-keyring (use this only if keys are expired)
sudo pacman -Syu
flatpak update
