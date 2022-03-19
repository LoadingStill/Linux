#!/bin/bash



echo "################################################################"
echo "#                                                              #"
echo "#                    Ubuntu Install Scrip                      #"
echo "#                                                              #"
echo "################################################################"



echo "####################    Adding Repositories   #######################"
sh software/apt/repositories-multiverse.sh #adds the multiverse repository
sh software/apt/repositories-universe.sh #adds the universe repository
echo "####################    Repositories Added   #######################"



echo "####################    Updating    #######################"
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
echo "####################    Updated    #######################"



echo "####################    Installing Software  #######################"
sh software/apt/install-ffmpeg.sh #installs ffmpeg
sh software/apt/install-obs-studio.sh #installs OBS Studio
sh software/apt/install-vlc.sh #installs vlc
sh software/apt/install-thunderbird.sh #installs thunderbird
sh software/apt/install-inkscape.sh #installs inkscape
sh software/apt/install-wget.sh #installs wget
sh software/apt/install-git.sh #installs git
sh software/apt/install-libreoffice.sh #installs libreoffice
sh software/apt/install-qbittorrent.sh #installs qbittorrent
sh software/apt/install-flatpack.sh #installs flatpack
echo "####################    Software Installed   #######################"



echo "####################    Non-Free Software Selection   #######################"
PS3='Please enter your choice: '
options=("1 VS-Code" "2 Steam" "3 Discord" "4 Install ALL" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "VS-Code")
            sh software/apt/install-vscode.sh #installs vs-code (owned by Microsoft)
            ;;
        "Steam")
            sudo apt install -y steam #insatlls steam (owned by Valve)
            ;;
        "Discord")
            sh software/apt/install-discord.sh #installs discord (owned by Discord)
            ;;
        "Install ALL")
            sh software/apt/install-vscode.sh #installs vs-code (owned by Microsoft)
            sh software/apt/install-steam.sh #insatlls steam (owned by Valve)
            sh software/apt/install-discord.sh  #installs discord (owned by Discord)
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
echo "#                 Please restart your copmputer!               #"
echo "#                                                              #"
echo "################################################################"