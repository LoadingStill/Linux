#!/bin/bash
echo "####################    RMP Fusion Free Installing    #######################"
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
echo "####################    RMP Fusion Free Installed     #######################"