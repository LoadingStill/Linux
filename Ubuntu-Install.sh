!/bin/bash
#update system
sudo apt update
sudo apt full-upgrade -y
#Install multiverse repositort
sudo add-apt-repository multiverse
#make sure flatpack is installed
sudo apt install flatpakv
flatpack update
#install libreoffice repository
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install libreoffice
#install GIMP flatpack
#update flatpack
sudo flatpak update
sudo flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
#if program will not run by clicking shortcut run | flatpak run org.gimp.GIMP//stable
#install Inkscape
sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt-get update
sudo apt-get install inkscape
#install Thunderbird
sudo apt-get install thunderbird
#install OBS
sudo apt-get install ffmpeg
sudo apt install v4l2loopback-dkms
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update
sudo apt-get install obs-studio
#Install VLC
sudo apt-get install vlc
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
