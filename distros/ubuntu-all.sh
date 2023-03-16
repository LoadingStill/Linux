#!/bin/bash






echo "####################    Non-Free Software Selection   #######################"
PS3='Please enter your choice: '
options=("1 VS-Code" "2 Steam" "3 Discord" "4 Install ALL" "Quit")

install_vscode() {
  sh software/apt/install-desktop-vscode.sh || echo "Failed to install VS-Code"
}

install_steam() {
  sudo apt install -y steam || echo "Failed to install Steam"
}

install_discord() {
  sh software/apt/install-desktop-discord.sh || echo "Failed to install Discord"
}

install_all() {
  echo "This will install all applications. Are you sure? (y/n)"
  read answer
  if [ "$answer" == "y" ]; then
    install_vscode
    install_steam
    install_discord
  fi
}

while true; do
  select opt in "${options[@]}"; do
    case $opt in
      "1 VS-Code") install_vscode ;;
      "2 Steam") install_steam ;;
      "3 Discord") install_discord ;;
      "4 Install ALL") install_all ;;
      "Quit") exit ;;
      *) echo "Invalid option $REPLY" ;;
    esac
    break
  done
done

echo "####################   Non-Free Software Installed    #######################"





sudo reboot now
