#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

sudo add-apt-repository -y ppa:numix/ppa
#sudo add-apt-repository -y ppa:webupd8team/terminix
#sudo add-apt-repository -y ppa:nilarimogard/webupd8

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -yV install \
	build-essential chromium-browser cmus doublecmd-gtk ffmpeg gparted \
        guake htop iotop keepass2 mc moc numix-icon-theme openssh-server \
	php-cli screenfetch sublime-text tree zsh

./link_configs.sh

#./install_albert.sh
./install_motd.sh
./install_oh_my_zsh.sh
./install_guake_colors.sh

mkdir ~/.config/autostart/
ln -s /usr/share/applications/guake.desktop ~/.config/autostart/

# creates additional symlink for icons
mkdir ~/.icons
ln -s ~/.local/share/icons/flags ~/.icons/flags
# applies flag icons from freeflagicons.com
dconf write /org/mate/desktop/peripherals/keyboard/indicator/show-flags "true"
