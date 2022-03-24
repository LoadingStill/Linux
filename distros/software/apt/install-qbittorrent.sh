#!/bin/bash
echo "########################  qbittorrent installing  #######################"
sudo apt remove -y qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update
sudo apt install -y qbittorrent
echo "########################  qbittorrent  installed  #######################"