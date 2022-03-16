#!/bin/bash



echo "################################################################"
echo "#                                                              #"
echo "#                    Ubuntu Install Scrip                      #"
echo "#                                                              #"
echo "################################################################"



echo "####################    Updating    #######################"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
echo "####################    Updated    #######################"



echo "####################    Install Flatpack    #######################"
sudo apt remove flatpack
sudo apt install flatpakv
sudo flatpack update
echo "####################    Flatpack Installed   #######################"



echo "####################    Adding Repositories   #######################"
#Install repositories
sudo add-apt-repository multiverse
sudo add-apt-repository ppa:libreoffice/ppa
sudo add-apt-repository ppa:inkscape.dev/stable
sudo add-apt-repository ppa:obsproject/obs-studio
echo "####################    Repositories Added   #######################"


echo "####################    Installing Software   #######################"
#install OBS
sudo apt-get install ffmpeg
sudo apt install v4l2loopback-dkms
sudo apt-get update
sudo apt-get install obs-studio
sudo apt-get install vlc
sudo apt-get install thunderbird
sudo apt-get install inkscape
sudo apt-get install libreoffice
sudo flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
#if program will not run by clicking shortcut run | flatpak run org.gimp.GIMP//stable
echo "####################    Software Installed   #######################"



#ADD SELECTION TO INSTALL NON FREE SOFTWARE HERE!!!



echo "####################    Non-Free Software Installing   #######################"
#NON-FREE
#Wget vs code info
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
#Install VS-Code
sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders
#Install Steam
sudo apt-get install steam
echo "####################   Non-Free Software Installed    #######################"



echo "####################    After Software Updates    #######################"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
echo "####################    Completed    #######################"



eecho "################################################################"
echo "#                                                              #"
echo "#                    Completed Debian.sh                       #"
echo "#                                                              #"
echo "################################################################"
