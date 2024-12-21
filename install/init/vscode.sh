yay -S --needed visual-studio-code-bin --noconfirm

# Increase inotify limit
echo fs.inotify.max_user_watches=524288 | sudo tee /etc/sysctl.d/60-max-user-watches.conf && sudo sysctl --system

code &