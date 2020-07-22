#!/usr/bin/env bash

sudo apt update
sudo apt install -y gnome-shell-extensions

DIR="$(dirname $(readlink -f $0))"

cd tmp
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
sudo ./install.sh

cd $DIR/theme
cp -r ./gnome-extension/*  ~/.local/share/gnome-shell/extensions
dconf load / < gnome_settings.dconf
