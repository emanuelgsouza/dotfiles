# https://www.ostechnix.com/install-yaourt-arch-linux/

sudo pacman -S --needed base-devel git wget yajl --noconfirm && \

yaourt -S sublime-text-dev smartgit telegram-desktop-bin --noconfirm && \

## nodejs ecosystem
yaourt -S nodejs npm  yarn --noconfirm && \

## college
yaourt -S astah-community --noconfirm && \

## IDEs
yaourt -S intellij-idea-ultimate-edition phpstorm goland && \

## java environment
yaourt -S java-environment=8 --noconfirm && \
yaourt -S android-platform android-sdk android-sdk-platform-tools android-sdk-build-tools gradle --noconfirm && \

## docker
yaourt -S docker docker-compose --noconfirm && \

## fonts
yaourt -S ttf-fira-code powerline powerline-fonts ttf-liberation screenfetch figlet ttf-ubuntu-font-family --noconfirm && \

## utilities
yaourt -S pgadmin3 dbeaver redis-desktop-manager insomnia --noconfirm && \

yaourt -S google-chrome atom terminator visual-studio-code-bin && \

# sudo groupadd docker && \
sudo usermod -aG docker $USER && \
sudo systemctl enable docker && \
sudo systemctl start docker
