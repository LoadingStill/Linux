!#/bin/bash
echo "########################  libreoffice installing  #######################"
sudo dnf install -y libreoffice
echo 'libreoffice installed' >> /home/$(whoami)/info/log #add info to log
echo "########################  libreoffice  installed  #######################"
