#!/bin/bash
echo "########################  flatpack installing  #######################"
# Installing a package
flatpak install fedora $APPLICATION
# Removing a package
flatpak remove $APPLICATION
# Updating packages
flatpak update
echo "########################  flatpack  installed  #######################"
