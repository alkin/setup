yay -S cursor-bin --needed --noconfirm

# Replace StartupWMClass=* with StartupWMClass=cursor
sudo sed -i 's/StartupWMClass=.*$/StartupWMClass=cursor/g' /usr/share/applications/cursor-cursor.desktop

cursor &
