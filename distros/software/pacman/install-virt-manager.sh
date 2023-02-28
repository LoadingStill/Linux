#!/bin/bash
sudo pacman -Syy
sudo pacman -S archlinux-keyring
sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat










sudo usermod -a -G libvirt $(whoami)                                                            # adds current user to libvirt with out needing sudo every time
# Source: https://computingforgeeks.com/install-kvm-qemu-virt-manager-arch-manjar/
# Source: https://wiki.archlinux.org/title/Virt-Manager
