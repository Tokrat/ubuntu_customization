#!/bin/sh

echo '\n >> Installing software'

sudo apt update
sudo apt install -y snapd flameshot barrier

# VS Code
echo '> Installing VS Code'
sudo snap install code --classic

# Opera
echo '> Installing Opera'
sudo snap install opera

# Discord
echo '> Installing Discord'
sudo snap install discord

# Slack
echo '> Installing Slack'
sudo snap install slack

# Whatsapp
echo '> Installing Whatsapp'
sudo snap install whatsapp-for-linux

# Spotify
echo '> Installing Spotify'
sudo snap install spotify


# # Steam
# echo '> Installing Steam'
# sudo apt install -y steam
