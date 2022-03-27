#!/bin/bash
echo "########################  vlc installing  #######################"
flatpak install flathub org.videolan.VLC
flatpak run org.videolan.VLC
echo "########################  vlc installed  #######################"