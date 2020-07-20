#!/usr/bin/env bash

sudo apt update
sudo apt install snapd discord flameshot

# Barrier
echo '> Installing Barrier'
sudo snapd install barrier

# VS CODE
echo '> Installing VS Code'
sudo snapd install code

# VS Code extensions
echo '    > For VS Code preference, install plugin "Settings Sync" and download from git gist'
