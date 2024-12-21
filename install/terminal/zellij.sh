yay -S --needed zellij --noconfirm

mkdir -p ~/.config/zellij/themes

[ ! -f "$HOME/.config/zellij/config.kdl" ] && cp ~/.local/share/setup/configs/zellij.kdl ~/.config/zellij/config.kdl

# cp ~/.local/share/setup/themes/tokyo-night/zellij.kdl ~/.config/zellij/themes/tokyo-night.kdl
