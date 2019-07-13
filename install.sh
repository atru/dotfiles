#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

sudo add-apt-repository -y ppa:numix/ppa
sudo add-apt-repository -y ppa:webupd8team/terminix

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -yV install \
	albert build-essential chromium-browser cmus doublecmd-gtk ffmpeg git \
        gparted guake htop iotop keepass2 mc moc numix-icon-theme openssh-server \
	php-cli screenfetch sublime-text tree zsh

./link_configs.sh

./install_motd.sh
./install_oh_my_zsh.sh
./install_guake_colors.sh

# creates additional symlink for icons
ln -s ~/.local/share/icons/flags ~/.icons/flags
# applies flag icons from freeflagicons.com
dconf write /org/mate/desktop/peripherals/keyboard/indicator/show-flags "true"
