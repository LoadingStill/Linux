#!/bin/bash



echo "################################################################"
echo "#                                                              #"
echo "#                    Ubuntu Install Scrip                      #"
echo "#                                                              #"
echo "################################################################"



echo "####################    Adding Repositories   #######################"
sh software/apt/install-repositories-multiverse.sh #adds the multiverse repository
sh software/apt/install-repositories-universe.sh #adds the universe repository
echo "####################    Repositories Added   #######################"



echo "####################    Updating    #######################"
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
echo "####################    Updated    #######################"



echo "####################    Installing Software  #######################"
sh software/apt/install-desktop-ffmpeg.sh #installs ffmpeg
sh software/apt/install-desktop-obs-studio.sh #installs OBS Studio
sh software/apt/install-desktop-vlc.sh #installs vlc
sh software/apt/install-desktop-thunderbird.sh #installs thunderbird
sh software/apt/install-desktop-inkscape.sh #installs inkscape
sh software/apt/install-desktop-wget.sh #installs wget
sh software/apt/install-desktop-git.sh #installs git
sh software/apt/install-desktop-libreoffice.sh #installs libreoffice
sh software/apt/install-desktop-qbittorrent.sh #installs qbittorrent
sh software/apt/install-desktop-flatpack.sh #installs flatpack
sh software/apt/install-desktop-firefox.sh #installs firefox
echo "####################    Software Installed   #######################"



echo "####################    Non-Free Software Selection   #######################"
PS3='Please enter your choice: '
options=("1 VS-Code" "2 Steam" "3 Discord" "4 Install ALL" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "VS-Code")
            sh software/apt/install-desktop-vscode.sh #installs vs-code (owned by Microsoft)
            ;;
        "Steam")
            sudo apt install -y steam #insatlls steam (owned by Valve)
            ;;
        "Discord")
            sh software/apt/install-desktop-discord.sh #installs discord (owned by Discord)
            ;;
        "Install ALL")
            sh software/apt/install-desktop-vscode.sh #installs vs-code (owned by Microsoft)
            sh software/apt/install-desktop-steam.sh #insatlls steam (owned by Valve)
            sh software/apt/install-desktop-discord.sh  #installs discord (owned by Discord)
            ;;
        "None")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
echo "####################   Non-Free Software Installed    #######################"



echo "####################    After Software Updates    #######################"
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
echo "####################  Completed Software Install  #######################"



echo "################################################################"
echo "#                                                              #"
echo "#                    Completed ubuntu-all.sh                   #"
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
