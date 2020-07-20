#!/usr/bin/env bash

THISDIR="$(dirname $(readlink -f $0))"

sh $THISDIR/install_zsh.sh
sh $THISDIR/install_vsc.sh
