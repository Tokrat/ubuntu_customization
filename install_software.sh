#!/usr/bin/env bash

sudo apt update
sudo apt install -y snapd discord flameshot chromium-browser

# Barrier
echo '> Installing Barrier'
sudo snap install barrier

# VS CODE
echo '> Installing VS Code'
sudo snap install code

# VS Code extensions
echo '    > For VS Code preference, install plugin "Settings Sync" and download from git gist'
