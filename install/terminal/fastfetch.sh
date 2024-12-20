# Display system information in the terminal
yay -S --needed fastfetch --noconfirm

# Only attempt to set configuration if fastfetch is not already set
if [ ! -f "$HOME/.config/fastfetch/config.jsonc" ]; then
  # Use setup fastfetch config
  mkdir -p ~/.config/fastfetch
  cp ~/.local/share/setup/configs/fastfetch.jsonc ~/.config/fastfetch/config.jsonc
fi
