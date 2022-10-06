#!/bin/bash


echo "####################    Gameyfin Installing    #######################"
#you need java version 18+ and you need to download the .jar release from gameyfin github (2files .jar and .properties)
#https://github.com/grimsi/gameyfin


sudo dnf install -y java-latest-openjdk.x86_64
mkdir install_script/
mkdir install_script/gameyfin
cd install_script/gameyfin/
wget https://github.com/grimsi/gameyfin/releases/download/v1.2.1/gameyfin-1.2.1.jar
wget https://github.com/grimsi/gameyfin/releases/download/v1.2.1/gameyfin.properties
cd


#to run this program you need to edit the properties 
echo "####################    Gameyfin Installed     #######################"
