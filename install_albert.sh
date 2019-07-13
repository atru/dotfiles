#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

sudo apt-get install -y g++ cmake qtbase5-dev libqt5x11extras5-dev libqt5svg5-dev libmuparser-dev qtdeclarative5-dev python3-dev libqt5charts5-dev sqlite libqt5sql5-sqlite

cd /tmp
git clone --recursive https://github.com/albertlauncher/albert.git
mkdir albert-build
cd albert-build
cmake ../albert -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug
make
sudo make install

ln -s /usr/share/applications/albert.desktop ~/.config/autostart/
