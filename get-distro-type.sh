#!/bin/bash
# Script to determine Linux distribution and version

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
            echo "Running Ubuntu-specific code..."
            # Add Ubuntu-specific code here
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
        ;;
    * )
        echo "Invalid choice, skipping distribution-specific code."
        ;;
esac
