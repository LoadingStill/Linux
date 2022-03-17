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
sudo apt-get autoremove -y
echo "####################    Updated    #######################"



echo "####################    Adding Repositories   #######################"
#Install repositories
sudo add-apt-repository -y multiverse
sudo add-apt-repository -y ppa:libreoffice/ppa
sudo add-apt-repository -y ppa:inkscape.dev/stable
sudo add-apt-repository -y ppa:obsproject/obs-studio
sudo add-apt-repository -y ppa:flatpak/stable
echo "####################    Repositories Added   #######################"



echo "####################       Remove Current Versions      #######################"
sudo apt-get remove ffmpeg
sudo apt-get remove obs-studio
sudo apt-get remove vlc
sudo apt-get remove thunderbird
sudo apt-get remove inkscape
sudo apt-get remove libreoffice
sudo apt-get remove flatpack
echo "####################    Completed Removal of Software   #######################"



echo "####################    Installing Software  #######################"
#install OBS
sh software/apt/install-ffmpeg.sh #installs ffmpeg
sh software/apt/install-obs-studio.sh #installs OBS Studio
sh software/apt/install-vlc.sh #installs vlc
sudo apt-get install -y thunderbird
sudo apt-get install -y inkscape
sudo apt-get install -y libreoffice
sudo apt-get install -y wget
sudo flatpak install -y https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
#if program will not run by clicking shortcut run | flatpak run org.gimp.GIMP//stable
echo "####################    Software Installed   #######################"


echo "####################    Non-Free Software Selection   #######################"
#ADD SELECTION TO INSTALL NON FREE SOFTWARE HERE!!!

PS3='Please enter your choice: '
options=("1 VS-Code" "2 Steam" "3 Discord" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "1 VS-Code")
            sh software/apt/install-vscode.sh
            ;;
        "2 Steam")
            sudo apt-get install -y steam
            ;;
        "3 Discord")
            wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
            sudo dpkg -i /path/to/discord.deb
            ;;
        "Quit")
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
echo "####################    Completed Updates    #######################"



echo "################################################################"
echo "#                                                              #"
echo "#                    Completed ubuntu-all.sh                   #"
echo "#                 Please restart your copmputer!               #"
echo "#                                                              #"
echo "################################################################"
