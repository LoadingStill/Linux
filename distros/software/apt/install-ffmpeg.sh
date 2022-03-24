#!/bin/bash
echo "########################  ffmpeg installing  #######################"
sudo apt remove ffmpeg
sudo apt remove ffmpeg-real
sudo apt-add-repository ppa:samrog131/ppa
sudo apt update
sudo apt install -y ffmpeg-real
sudo ln -sf /opt/ffmpeg/bin/ffmpeg /usr/bin/ffmpeg
echo "########################  ffmpeg installed  #######################"