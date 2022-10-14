#!/bin/bash
echo "####################    RMP Fusion Free Installing    #######################"
sudo dnf install -y https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update -y
echo "####################    RMP Fusion Free Installed     #######################"
