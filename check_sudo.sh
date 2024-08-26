#!/bin/sh

if [ -f "/.dockerenv" ]; then
    sudo -v
    if [ $? -ne 0 ]; then
        echo "\n>> Installing Sudo\n"
        apt update && apt install -y apt-utils sudo
        sudo -v
        if [ $? -ne 0 ]; then
            echo "\n>> Fail to install Sudo, exiting..."
            exit
        fi
    fi
fi
else
	if [ $EUID -e 0 ]; then
		echo "This command should NOT be run as sudo"
		exit $?
	fi
    sudo -v
fi