#!/bin/bash



echo "################################################################"
echo "#                                                              #"
echo "#                    Ubuntu Install Scrip                      #"
echo "#                                                              #"
echo "################################################################"



echo "####################    Adding Repositories   #######################"
sh software/apt-flatpack/repositories-multiverse.sh #adds the multiverse repository
sh software/apt-flatpack/repositories-universe.sh #adds the universe repository
sh software/apt-flatpack/repositories-flatpack.sh #adds the flatpack repository
echo "####################    Repositories Added   #######################"



echo "####################    Updating    #######################"
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
echo "####################    Updated    #######################"



echo "####################    Installing Software  #######################"
sh software/apt-flatpack/install-ffmpeg.sh #installs ffmpeg
sh software/apt-flatpack/install-obs-studio.sh #installs OBS Studio
sh software/apt-flatpack/install-vlc.sh #installs vlc
sh software/apt-flatpack/install-thunderbird.sh #installs thunderbird
sh software/apt-flatpack/install-inkscape.sh #installs inkscape
sh software/apt-flatpack/install-wget.sh #installs wget
sh software/apt-flatpack/install-git.sh #installs git
sh software/apt-flatpack/install-libreoffice.sh #installs libreoffice
sh software/apt-flatpack/install-qbittorrent.sh #installs qbittorrent
sh software/apt-flatpack/install-flatpack.sh #installs flatpack
sh software/apt-flatpack/install-bitwarden.sh #installs bitwarden
echo "####################    Software Installed   #######################"



echo "####################    Non-Free Software Selection   #######################"
PS3='Please enter your choice: '
options=("1 VS-Code" "2 Steam" "3 Discord" "4 Install ALL" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "VS-Code")
            sh software/apt-flatpack/install-vscode.sh #installs vs-code (owned by Microsoft)
            ;;
        "Steam")
            sudo apt install -y steam #insatlls steam (owned by Valve)
            ;;
        "Discord")
            sh software/apt-flatpack/install-discord.sh #installs discord (owned by Discord)
            ;;
        "Install ALL")
            sh software/apt-flatpack/install-vscode.sh #installs vs-code (owned by Microsoft)
            sh software/apt-flatpack/install-steam.sh #insatlls steam (owned by Valve)
            sh software/apt-flatpack/install-discord.sh  #installs discord (owned by Discord)
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
