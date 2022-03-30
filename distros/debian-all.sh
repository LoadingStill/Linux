#!/bin/bash



echo "################################################################"
echo "#                                                              #"
echo "#                    Debian Install Scrip                      #"
echo "#                                                              #"
echo "################################################################"



echo "####################    Updating    #######################"
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
echo "####################    Updated    #######################"



echo "####################    Installing Software  #######################"
sh software/apt/install-ffmpeg.sh #installs ffmpeg
sh software/apt/install-obs-studio.sh #installs OBS Studio
sh software/apt/install-vlc.sh #installs vlc
sh software/apt/install-thunderbird.sh #installs thunderbird
sh software/apt/install-inkscape.sh #installs inkscape
sh software/apt/install-wget.sh #installs wget
sh software/apt/install-git.sh #installs git
sh software/apt/install-libreoffice.sh #installs libreoffice
sh software/apt/install-qbittorrent.sh #installs qbittorrent
sh software/apt/install-flatpack.sh #installs flatpack
echo "####################    Software Installed   #######################"



#ADD SELECTION TO INSTALL NON FREE SOFTWARE HERE!!!



echo "####################    Non-Free Software Installing   #######################"
#NON-FREE
#Wget vs code info
sudo apt install -y wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
#Install VS-Code
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code # or code-insiders
#Install Steam
sudo apt install -y steam
echo "####################   Non-Free Software Installed    #######################"



echo "####################    After Software Updates    #######################"
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
echo "####################    Completed Updates    #######################"



eecho "################################################################"
echo "#                                                              #"
echo "#                    Completed Debian.sh                       #"
echo "#                                                              #"
echo "################################################################"
