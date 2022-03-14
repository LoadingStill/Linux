!/bin/bash
#update
sudo apt update
sudo apt full-upgrade -y
#install libreoffice flatpack
flatpak uninstall org.libreoffice.LibreOffice//fresh
