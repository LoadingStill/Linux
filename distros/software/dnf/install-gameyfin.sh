#!/bin/bash



echo "####################    Gameyfin Installing    #######################"
#you need java version 18+ and you need to download the .jar release from gameyfin github (2files .jar and .properties)
#https://github.com/grimsi/gameyfin
#https://api-docs.igdb.com/#about



sudo dnf install -y java-latest-openjdk.x86_64
wget https://github.com/grimsi/gameyfin/releases/download/v1.2.1/gameyfin-1.2.1.jar -P /home/$(whoami)/servarrInfo/install_script/gameyfin/
wget https://github.com/grimsi/gameyfin/releases/download/v1.2.1/gameyfin.properties -P /home/$(whoami)/servarrInfo/install_script/gameyfin/



echo 'gameyfin doenloaded, you NEED to edit the properties file before you can run this program. location /home/$(whoami)/servarrInfo/install_script/gameyfin' >> /home/$(whoami)/servarrInfo/log



#to run this program you need to edit the properties 
echo "####################    Gameyfin Installed     #######################"
