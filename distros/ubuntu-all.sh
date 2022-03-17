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



echo "####################    Adding Repositories   #######################"
#Install repositories
sudo add-apt-repository -y multiverse
sudo add-apt-repository -y ppa:libreoffice/ppa
sudo add-apt-repository -y ppa:inkscape.dev/stable
sudo add-apt-repository -y ppa:obsproject/obs-studio
sudo add-apt-repository -y ppa:flatpak/stable
echo "####################    Repositories Added   #######################"



echo "####################       Remove Current Versions      #######################"
sudo apt remove ffmpeg
sudo apt remove obs-studio
sudo apt remove vlc
sudo apt remove thunderbird
sudo apt remove inkscape
sudo apt remove libreoffice
sudo apt remove flatpack
echo "####################    Completed Removal of Software   #######################"



echo "####################    Installing Software  #######################"
#install OBS
sudo apt-get install -y ffmpeg
sudo apt install -y v4l2loopback-dkms
sudo apt-get update
sudo apt-get install -y obs-studio
sudo apt-get install -y vlc
sudo apt-get install -y thunderbird
sudo apt-get install -y inkscape
sudo apt-get install -y libreoffice
sudo flatpak install -y https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
#if program will not run by clicking shortcut run | flatpak run org.gimp.GIMP//stable
echo "####################    Software Installed   #######################"



#ADD SELECTION TO INSTALL NON FREE SOFTWARE HERE!!!
#Selection
#install 1,2,3,4...
#1.vscode
#2.steam
#3.discord
#4.etc
#5.NONE-EXIT install.sh



echo "####################    Non-Free Software Installing   #######################"
#NON-FREE
#Wget vs code info
sudo apt-get install -y wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
#Install VS-Code
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code # or code-insiders
#Install Steam
sudo apt-get install -y steam
echo "####################   Non-Free Software Installed    #######################"



echo "####################    After Software Updates    #######################"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
echo "####################    Completed Updates    #######################"



echo "################################################################"
echo "#                                                              #"
echo "#                    Completed ubuntu-all.sh                   #"
echo "#                 Please restart your copmputer!               #"
echo "#                                                              #"
echo "################################################################"
