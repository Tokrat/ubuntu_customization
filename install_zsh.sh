#!/usr/bin/env bash

# Install dependancies
sudo apt-get -y update \
    && sudo apt-get install -y zsh git curl wget dos2unix autojump

# Install oh my zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install powerlevel10k theme
# Font
sudo mkdir -p ~/.fonts/m
sudo cp -p ./zsh/fonts/* ~/.fonts/m
sudo fc-cache -f -v

# Theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Copy all the settings
sudo cp ./zsh/zshrc ~/.zshrc
sudo cp ./zsh/p10k.zsh ~/.p10k.zsh
# dos2unix ~/.zshrc
# dos2unix ~/.p10k.zsh

sudo chown -R $USER:$USER ~/.oh-my-zsh
