# Install gum
sudo yay -S --needed --noconfirm gum

# Prompt for choices
export SETUP_NAME=$(gum input --placeholder "Enter your name")
export SETUP_EMAIL=$(gum input --placeholder "Enter your email")

# Run terminal installers
for installer in ~/.local/share/setup/install/init/*.sh; do source $installer; done

# Green Check emoji
echo "✅ Finished installing all init-based apps and configurations."
