#!/bin/bash



echo "################################################################"
echo "#                                                              #"
echo "#                   Manjaro Install Scrip                      #"
echo "#                                                              #"
echo "################################################################"



echo "####################    Updating    #######################"
#update and install
sudo pacman -Syyu
#Remove packages no longer included in any repositories.
pacman -Qmq | pacman -Rs -
echo "####################    Updated     #######################"



echo "####################    Installing Software   #######################"
sh software/pacman/install-obs.sh
echo "####################    Software Installed    #######################"



echo "####################    After Software Updates    #######################"
#update and install
sudo pacman -Syyu
#Remove packages no longer included in any repositories.
pacman -Qmq | pacman -Rs -
echo "####################    Completed    #######################"



echo "################################################################"
echo "#                                                              #"
echo "#                   Manjaro Install Script                     #"
echo "#                                                              #"
echo "################################################################"
