#!/bin/sh

echo '\n >> Installing theme'

THISDIR="$(dirname $(readlink -f $0))"

sudo apt -y update && sudo apt install -y \
    gnome-shell-extensions gnome-tweaks gnome-themes-extra \
    dconf-cli gtk2-engines-murrine libsass1 sassc wget unzip

# Install Orchis theme
cd /tmp
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
./install.sh -t teal -c dark

# Install Sweet theme
cd /tmp
git clone https://github.com/EliverLara/Sweet.git
sudo mv Sweet /usr/share/themes/
gsettings set org.gnome.desktop.interface gtk-theme "Sweet"
gsettings set org.gnome.desktop.wm.preferences theme "Sweet"

# Install Candy icons
wget https://github.com/EliverLara/candy-icons/archive/refs/heads/master.zip -O candy-icons.zip
sudo unzip candy-icons.zip -d /usr/share/icons/
sudo mv /usr/share/icons/candy-icons-master /usr/share/icons/candy-icons
rm candy-icons.zip
sudo gtk-update-icon-cache /usr/share/icons/candy-icons

# Install Matrix workspace
cd /tmp
wget https://github.com/mzur/gnome-shell-wsmatrix/releases/download/v10.0/wsmatrix@martin.zurowietz.de.zip
mkdir -p ~/.local/share/gnome-shell/extensions/wsmatrix@martin.zurowietz.de
unzip wsmatrix@martin.zurowietz.de.zip -d ~/.local/share/gnome-shell/extensions/wsmatrix@martin.zurowietz.de 
gsettings set org.gnome.shell enabled-extensions "['wsmatrix@martin.zurowietz.de']"
gnome-extensions enable wsmatrix@martin.zurowietz.de

# Install font
$THISDIR/install_font.sh

# Load gnome settings
dconf load / < $THISDIR/theme/gnome_settings.dconf
