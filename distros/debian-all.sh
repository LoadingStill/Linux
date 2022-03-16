#!/bin/bash



echo "################################################################"
echo "#                                                              #"
echo "#                    Debian Install Scrip                      #"
echo "#                                                              #"
echo "################################################################"



echo "####################    Updating    #######################"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
echo "####################    Updated    #######################"



echo "####################    Installing Software   #######################"
sh software/apt/install-obs.sh
sh software/apt/install-discord.sh
echo "####################    Software Installed    #######################"



echo "####################    After Software Updates    #######################"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
echo "####################    Completed    #######################"



eecho "################################################################"
echo "#                                                              #"
echo "#                    Completed Debian.sh                       #"
echo "#                                                              #"
echo "################################################################"
