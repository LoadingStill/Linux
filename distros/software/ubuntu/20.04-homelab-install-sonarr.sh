!#/bin/bash
echo "########################  Sonarr Installing  #######################"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 2009837CBFFD68F45BC180471F4F90DE2A9B4BF8
echo "deb https://apt.sonarr.tv/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/sonarr.list
sudo apt update
sudo apt install sonarr
sudo systemctl enable sonarr
sudo systemctl start sonarr
echo "########################  Sonarr Installed  #######################"
