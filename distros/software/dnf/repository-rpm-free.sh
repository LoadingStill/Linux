#!/bin/bash
echo "####################    RMP Fusion Free Installing    #######################"
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
echo "####################    RMP Fusion Free Installed     #######################"
