#!/bin/bash
echo "####################    RetroArch Insatlling   #######################"
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user flathub org.libretro.RetroArch
echo "####################    RetroArch  Installed   #######################"
