#!/bin/bash
echo "########################  linreoffice installing  #######################"
sudo apt-get remove libreoffice
sudo add-apt-repository -y ppa:libreoffice/ppa
sudo apt-get install -y libreoffice
echo "########################  libreoffice  installed  #######################"