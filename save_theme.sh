#!/usr/bin/env bash

DIR="$(dirname $(readlink -f $0))"

cd $DIR/theme
dconf dump / > gnome_settings.dconf
