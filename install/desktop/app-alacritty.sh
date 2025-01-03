# Alacritty is a GPU-powered and highly extensible terminal. See https://alacritty.org/
yay -S --needed alacritty --noconfirm

mkdir -p ~/.config/alacritty
cp ~/.local/share/setup/configs/alacritty.toml ~/.config/alacritty/alacritty.toml
# cp ~/.local/share/setup/themes/tokyo-night/alacritty.toml ~/.config/alacritty/theme.toml
cp ~/.local/share/setup/configs/alacritty/fonts/CaskaydiaMono.toml ~/.config/alacritty/font.toml
cp ~/.local/share/setup/configs/alacritty/font-size.toml ~/.config/alacritty/font-size.toml

alacritty migrate