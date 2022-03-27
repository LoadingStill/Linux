#!/bin/bash
echo "########################  inkscape installing  #######################"
sudo add-apt-repository -y ppa:inkscape.dev/stable
sudo apt update
sudo apt install -y inkscape
echo "########################  inkscape installed  #######################"