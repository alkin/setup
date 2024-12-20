# Install gum
sudo yay -S --needed --noconfirm gum

# Prompt for choices
export SETUP_NAME=$(gum input --placeholder "Enter your name")
export SETUP_EMAIL=$(gum input --placeholder "Enter your email")
