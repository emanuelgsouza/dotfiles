#!/usr/bin/env bash

# https://www.ostechnix.com/install-yaourt-arch-linux/
# https://aur.archlinux.org/packages/yay-bin/

sudo pacman -Sy --needed base-devel git wget yajl --noconfirm  && \

yaourt -S yay-bin

yay -S telegram-desktop-bin --noconfirm && \

yay -S ttf-font powerline powerline-fonts noto-fonts-emoji ttf-fira-code ttf-liberation screenfetch figlet --noconfirm  && \

## utilities
yay -S dbeaver redis-desktop-manager insomnia --noconfirm && \

yay -S google-chrome visual-studio-code-bin && \

yay -S htop

# enable gnome-extension
yay -S gnome-tweaks chrome-gnome-shell && \
