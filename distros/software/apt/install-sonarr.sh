!#/bin/bash
echo "########################  Sonarr Installing  #######################"
wget https://mediaarea.net/repo/deb/repo-mediaarea_1.0-20_all.deb && dpkg -i repo-mediaarea_1.0-20_all.deb && apt-get update #Installs the MediaInfo repository
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 2009837CBFFD68F45BC180471F4F90DE2A9B4BF8
echo "deb https://apt.sonarr.tv/debian buster main" | sudo tee /etc/apt/sources.list.d/sonarr.list
sudo apt update
sudo apt install sonarr
#Browse to http://localhost:8989 to start using Sonarr.
#(Replace 'localhost' with your server IP if you're connecting remotely)
echo "########################  Sonarr Installed  #######################"
