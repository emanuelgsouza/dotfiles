#!/usr/bin/env bash

# git
git config --global alias.vlog 'log --graph --date-order --date=relative --pretty=format:"%C(white)%h: %Cgreen - %an - %Cred %C(cyan)%ar:%Creset%n%s%n" --color'

# notify changes
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p && \

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.d/99-sysctl.conf && sudo sysctl --system && \
