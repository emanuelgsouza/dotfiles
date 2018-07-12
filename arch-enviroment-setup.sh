sudo pacman -S --needed base-devel git wget yajl --noconfirm && \

yay -S smartgit telegram-desktop-bin --noconfirm && \

## nodejs ecosystem
yay -S nodejs npm  yarn --noconfirm && \

## college
yay -S astah-community --noconfirm && \

## IDEs
yay -S phpstorm eclipse-java && \

## java environment
yay -S java-environment=8 --noconfirm && \
# yay -S android-platform android-sdk android-sdk-platform-tools android-sdk-build-tools gradle --noconfirm && \

## docker
yay -S docker docker-compose --noconfirm && \

## fonts
yay -S ttf-fira-code powerline powerline-fonts ttf-liberation screenfetch figlet ttf-ubuntu-font-family --noconfirm && \

## utilities
yay -S pgadmin3 dbeaver redis-desktop-manager insomnia --noconfirm && \

yay -S google-chrome atom terminator visual-studio-code-bin filezilla && \

yay -S htop && \

# enable gnome-extension
yay -S gnome-tweaks chrome-gnome-shell && \

# sudo groupadd docker && \
sudo usermod -aG docker $USER && \
sudo systemctl enable docker && \
sudo systemctl start docker

# notify changes
echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/40-max-user-watches.conf && sudo sysctl --system
