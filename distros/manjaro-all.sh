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


echo "####################    Rebooting    #######################"
echo "Rebooting in 5     Press Ctrl + C to cancel"
sleep 1
echo "Rebooting in 4     Press Ctrl + C to cancel"
sleep 1
echo "Rebooting in 3     Press Ctrl + C to cancel"
sleep 1
echo "Rebooting in 2     Press Ctrl + C to cancel"
sleep 1
echo "Rebooting in 1     Press Ctrl + C to cancel"
sleep 1
echo "Rebooting in 0     Press Ctrl + C to cancel"
echo "####################    Rebooting    #######################"

sudo reboot now
