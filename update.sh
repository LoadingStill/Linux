#!/bin/bash

# update system packages using the appropriate package manager
if [ -x "$(command -v dnf)" ]; then
  # Fedora uses dnf
  sudo dnf update -y
elif [ -x "$(command -v apt-get)" ]; then
  # Debian and Ubuntu use apt-get
  sudo apt-get update -y
  sudo apt-get upgrade -y
elif [ -x "$(command -v emerge)" ]; then
  # Gentoo uses emerge
  sudo emerge --sync
  sudo emerge --update --deep --with-bdeps=y @world
elif [ -x "$(command -v pacman)" ]; then
  # Arch uses pacman
  sudo pacman -Syu --noconfirm
else
  echo "Unsupported package manager. Please update your system manually."
  exit 1
fi

# update Flatpak packages
if [ -x "$(command -v flatpak)" ]; then
  flatpak update -y
fi

# update Snap packages
if [ -x "$(command -v snap)" ]; then
  sudo snap refresh
fi

echo "System update complete."
