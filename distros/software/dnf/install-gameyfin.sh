#!/bin/bash


echo "####################    Gameyfin Installing    #######################"
#you need java version 18+ and you need to download the .jar release from gameyfin github (2files .jar and .properties)
#https://github.com/grimsi/gameyfin


sudo dnf install -y java-latest-openjdk.x86_64
mkdir /home/$(whoami)/servarrInfo/install_script/
mkdir /home/$(whoami)/servarrInfo/install_script/gameyfin
cd install_script/gameyfin/
wget https://github.com/grimsi/gameyfin/releases/download/v1.2.1/gameyfin-1.2.1.jar
wget https://github.com/grimsi/gameyfin/releases/download/v1.2.1/gameyfin.properties
cd


echo 'radarr installed - $ip4:7878' >> /home/$(whoami)/servarrInfo



#to run this program you need to edit the properties 
echo "####################    Gameyfin Installed     #######################"
