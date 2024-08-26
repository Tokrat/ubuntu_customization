#!/bin/sh

echo '\n >> Installing full ubuntu setup\n--------------------------------------------------\n'

THISDIR="$(dirname $(readlink -f $0))"
$THISDIR/check_sudo.sh

# Install all the standard packages
sh $THISDIR/install_apt.sh

# Install Docker
sh $THISDIR/install_docker.sh

# Install all the software
sh $THISDIR/install_software.sh

# Install ZSH
# >> This has to be done last since it changes the shell
sh $THISDIR/install_zsh.sh
