#!/bin/bash
# Script to determine Linux distribution and version
#this is best run with sudo permissions to auto install the packages in the next steps.

if [[ $EUID -ne 0 ]]; then #if $UIS is not equal to zero then the user is not running in sudo (root)
  echo "This script must be run with sudo."
  exit 1
fi


if [ -f /etc/os-release ]; then
    source /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
elif [ -f /etc/lsb-release ]; then
    source /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
elif [ -f /etc/redhat-release ]; then
    OS=$(cat /etc/redhat-release | awk '{print $1}')
    VER=$(cat /etc/redhat-release | awk '{print $4}')
elif [ -f /etc/gentoo-release ]; then
    OS=$(cat /etc/gentoo-release | awk '{print $1}')
    VER=$(cat /etc/gentoo-release | awk '{print $5}')
else
    OS=$(uname -s)
    VER=$(uname -r)
fi


echo "You are using $OS version $VER."


read -p "Do you want to run distribution-specific code? [y/n]: " choice
case $choice in
    y|Y )
        # Run code specific to each distribution
        if [[ "$OS" == "Debian GNU/Linux" ]]; then
            echo "Running Debian-specific code..."
            # Add Debian-specific code here
        elif [[ "$OS" == "Ubuntu" ]]; then
            read -p "Do you want to run Ubuntu Server Homelab or Desktop Specific installer? [S/d]: " ubuntu_choice
            case $ubuntu_choice in
                s|S )
                    echo "Running Ubuntu Server Homelab code..."
                    # Add Ubuntu server-specific code here
                    sh distros/ubuntu-server-homelab.sh
                    ;;
                d|D )
                    echo "Running Ubuntu Desktop Specific code..."
                    # Add Ubuntu desktop-specific code here
                    sh distros/ubuntu-desktop.sh
                    ;;
                * )
                    echo "Invalid choice, skipping Ubuntu-specific code."
                    ;;
            esac
        elif [[ "$OS" == "Arch Linux" ]]; then
            echo "Running Arch Linux-specific code..."
            # Add Arch Linux-specific code here
        elif [[ "$OS" == "Red Hat Enterprise Linux" ]]; then
            echo "Running Red Hat-specific code..."
            # Add Red Hat-specific code here
        elif [[ "$OS" == "Gentoo Base System" ]]; then
            echo "Running Gentoo-specific code..."
            # Add Gentoo-specific code here
        else
            echo "Distribution-specific code not available for $OS."
        fi
        ;;
    n|N )
        echo "Skipping distribution-specific code."
        # Define the list of options
           options=("Option 1" "Option 2" "Option 3")
           
          # Use the select command to display the options and prompt the user to select one
          select choice in "${options[@]}"; do
            case $choice in
              "Option 1")
                echo "You chose Option 1"
                break
                ;;
              "Option 2")
                echo "You chose Option 2"
                break
                ;;
              "Option 3")
                echo "You chose Option 3"
                break
                ;;
              *)
                echo "Invalid option, please try again."
                ;;
            esac
          done
        ;;
    * )
        echo "Invalid choice, skipping distribution-specific code."
        ;;
esac
