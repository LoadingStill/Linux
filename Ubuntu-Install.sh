!/bin/bash
#update system
sudo apt update
sudo apt full-upgrade -y
#make sure flatpack is installed
sudo apt install flatpakv
flatpack update
#install libreoffice repository
sudo add-apt-repository ppa:libreoffice/ppa
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install libreoffice
#install GIMP flatpack
#update flatpack
sudo flatpak update
sudo flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
#if program will not run by clicking shortcut run | flatpak run org.gimp.GIMP//stable
