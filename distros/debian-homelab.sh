#!/bin/bash



echo "########################################################################"
echo "#                                                                      #"
echo "#                    Debian Homelab Install Scrip                      #"
echo "#                                                                      #"
echo "########################################################################"



echo "####################    Updating    #######################"
sudo apt update
echo "####################    Updated    #######################"



echo "####################    Installing Software  #######################"
sh software/apt/install-jellyfin.sh #installs jellyfin
echo "####################    Software Installed   #######################"


echo "####################    Updating    #######################"
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
echo "####################    Updated    ########################"



eecho "#######################################################################"
echo "#                                                                      #"
echo "#                    Completed Debian Homelab.sh                       #"
echo "#                                                                      #"
echo "########################################################################"
