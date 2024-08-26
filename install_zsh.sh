#!/usr/bin/env bash

echo '\n >> Installing zsh'

# Install dependencies
sudo apt-get -y update \
    && sudo apt-get install -y zsh git curl wget autojump

# Install oh my zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended"

# Install powerlevel10k theme
# Font
mkdir -p ~/.fonts/m
if [ -d "./zsh/fonts/" ]; then
    cp -p ./zsh/fonts/* ~/.fonts/m
    fc-cache -f -v
else
    echo "Font directory not found. Skipping font installation."
fi

# Theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Copy all the settings
if [ -f "./zsh/zshrc" ] && [ -f "./zsh/p10k.zsh" ]; then
    cp ./zsh/zshrc ~/.zshrc
    cp ./zsh/p10k.zsh ~/.p10k.zsh
else
    echo "Configuration files not found. Skipping config copy."
fi

# Set ownership of the .oh-my-zsh directory
chown -R $USER:$USER ~/.oh-my-zsh

# Change default shell to zsh, but stay in bash for this session
echo "Changing the default shell to zsh. You will need to log out and log back in to use it."
chsh -s $(which zsh)

echo '> Done installing zsh. Restart the terminal to start using zsh.'
