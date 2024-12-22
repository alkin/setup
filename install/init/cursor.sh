yay -S cursor-bin --needed --noconfirm

# Replace StartupWMClass=* with StartupWMClass=cursor
sed -i 's/StartupWMClass=.*$/StartupWMClass=cursor/g' /usr/share/applications/cursor.desktop

cursor &
