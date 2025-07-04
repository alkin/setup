#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Ensure computer doesn't go to sleep or lock while installing
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

# Install
source ~/.local/share/setup/install/init.sh

source ~/.local/share/setup/install/terminal.sh

source ~/.local/share/setup/install/dev.sh

# Install desktop tools and tweaks
# source ~/.local/share/setup/install/desktop.sh

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

# Reboot
echo "🔔 Ready to reboot for all settings to take effect?"
gum confirm && sudo reboot
