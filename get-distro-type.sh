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

# Run code specific to each distribution
if [[ "$OS" == "Ubuntu" ]]; then
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
    echo "Running generic Linux code..."
    # Add generic Linux code here
fi
