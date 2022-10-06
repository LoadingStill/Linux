#!/bin/bash
echo "########################  obs installing  #######################"
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update
sudo dnf install -y discord
#curl -o ~/Downloads/ https://discordapp.com/api/download?platform=linux&format=tar.gz
echo 'discord downloaded' >> /home/$(whoami)/info/log #add info to log
echo "########################  obs installed  #######################"
