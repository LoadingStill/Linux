#!/bin/bash
echo "########################  ffmpeg installing  #######################"
sudo apt-get remove ffmpeg
sudo apt-get remove ffmpeg-real
sudo apt-add-repository ppa:samrog131/ppa
sudo apt-get update
sudo apt-get install ffmpeg-real
sudo ln -sf /opt/ffmpeg/bin/ffmpeg /usr/bin/ffmpeg
echo "########################  ffmpeg installed  #######################"