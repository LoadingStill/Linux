#!/bin/bash
echo "########################  gimp installing  #######################"
sudo add-apt-repository -y ppa:flatpak/stable
sudo flatpack update
sudo flatpak install -y https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
#if program will not run by clicking shortcut run | flatpak run org.gimp.GIMP//stable
echo "########################  gimp  installed  #######################"
