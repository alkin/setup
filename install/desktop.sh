yay -S --needed flatpak --noconfirm

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Run terminal installers
for installer in ~/.local/share/setup/install/desktop/*.sh; do source $installer; done

# Green Check emoji
echo "✅ Finished installing all Desktop-based apps and configurations."
