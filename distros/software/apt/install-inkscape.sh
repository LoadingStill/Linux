#!/bin/bash
echo "########################  inkscape installing  #######################"
sudo add-apt-repository -y ppa:inkscape.dev/stable
sudo apt-get update
sudo apt-get install -y inkscape
echo "########################  inkscape installed  #######################"