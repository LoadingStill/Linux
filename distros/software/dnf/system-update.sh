#!/bin/bash
echo "####################    System Upgrading    #######################"
#sudo dnf check-update #If you want to see what is avilabe for updating but not update before you want to see what is changing, run this line by it self.
sudo dnf update -y
sudo dnf autoremove
#sudo dnf distro-sync #(if things breake run this line by it self)
echo "####################    System Upgraded    #######################"



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
