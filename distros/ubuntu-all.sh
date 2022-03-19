#!/bin/bash



echo "################################################################"
echo "#                                                              #"
echo "#                    Ubuntu Install Scrip                      #"
echo "#                                                              #"
echo "################################################################"



echo "####################    Updating    #######################"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove
echo "####################    Updated    #######################"



echo "####################    Adding Repositories   #######################"
sh software/apt/repositories-multiverse.sh #adds the multiverse repository
sh software/apt/repositories-universe.sh #adds the universe repository
echo "####################    Repositories Added   #######################"



echo "####################    Installing Software  #######################"
sh software/apt/install-multiverse.sh #installs multiverse
sh software/apt/install-ffmpeg.sh #installs ffmpeg
sh software/apt/install-obs-studio.sh #installs OBS Studio
sh software/apt/install-vlc.sh #installs vlc
sh software/apt/install-thunderbird.sh #installs thunderbird
sh software/apt/install-inkscape.sh #installs inkscape
sh software/apt/install-wget.sh #installs wget
sh software/apt/install-git.sh #installs git
sh software/apt/install-libreoffice.sh #installs libreoffice
sh software/apt/install-flatpack.sh #installs flatpack
echo "####################    Software Installed   #######################"


echo "####################    Non-Free Software Selection   #######################"
#ADD SELECTION TO INSTALL NON FREE SOFTWARE HERE!!!

PS3='Please enter your choice: '
options=("1 VS-Code" "2 Steam" "3 Discord" "4 Install ALL" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "VS-Code")
            sh software/apt/install-vscode.sh
            break
            ;;
        "Steam")
            sudo apt-get install -y steam
            break
            ;;
        "Discord")
            sh software/apt/install-discord.sh
            break
            ;;
        "Install ALL")
            sh software/apt/install-vscode.sh
            sh software/apt/install-discord.sh
            sh software/apt/install-discord.sh
            break
            ;;
        "None")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
echo "####################   Non-Free Software Installed    #######################"



echo "####################    After Software Updates    #######################"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y
echo "####################  Completed Software Install  #######################"



echo "################################################################"
echo "#                                                              #"
echo "#                    Completed ubuntu-all.sh                   #"
echo "#                 Please restart your copmputer!               #"
echo "#                                                              #"
echo "################################################################"