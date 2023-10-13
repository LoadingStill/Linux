#!/bin/bash



echo "#############################################################################"
echo "#                                                                          #"
echo "#                    AlmaLinux 8 Server Install Scrip                      #"
echo "#                                                                          #"
echo "#############################################################################"



echo "####################    Updating    #######################"
sudo dnf update -y
echo "####################    Updated    #######################"



echo "####################    Installing Software  #######################"

echo "####################    Software Installed   #######################"



echo "####################    Non-Free Software Installing   #######################"

echo "####################   Non-Free Software Installed    #######################"



echo "####################    After Software Updates    #######################"

echo "####################    Completed Updates    #######################"



echo "##########################################################################"
echo "#                                                                        #"
echo "#                    Completed almalinux-server.sh                       #"
echo "#                                                                        #"
echo "##########################################################################"



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
