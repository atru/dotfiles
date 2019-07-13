#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

echo "#!/bin/sh
cat  ~/.dotfiles/misc/waves.txt" | sudo tee /etc/update-motd.d/15-waves
sudo chmod +x /etc/update-motd.d/15-waves
