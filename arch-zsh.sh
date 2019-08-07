#!/usr/bin/env bash

yay -S zsh --noconfirm && \

yay -S nerd-fonts-complete && \

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && \

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions && \

# instalando o tema Powerlevel 9K
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k && \

# instalando o tema Spaceship
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

# dconf installed?
git clone https://github.com/GalaticStryder/gnome-terminal-colors-dracula

rm ~/.zshrc
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
