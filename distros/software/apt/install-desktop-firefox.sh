#!/bin/bash
echo "########################  firefox installing  #######################"
sudo apt update
sudo snap remove firefox -y
sudo apt install firefox -y
echo "########################  firefox  installed  #######################"
