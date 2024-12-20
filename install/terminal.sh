# Configure the bash shell using setup defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/setup/configs/bashrc ~/.bashrc

# Manjaro defaults to ZSH
[ -f "~/.zshrc" ] && cp ~/.zshrc ~/.zshrc.bak
cp ~/.local/share/setup/configs/zshrc ~/.zshrc

# Load the PATH for use later in the installers
source ~/.local/share/setup/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using setup defaults
cp ~/.local/share/setup/configs/inputrc ~/.inputrc

# Needed for all installers
sudo yay -S curl git zip unzip --noconfirm

# Run terminal installers
for installer in ~/.local/share/setup/install/terminal/*.sh; do source $installer; done

# Green Check emoji
echo "✅ Finished installing all Terminal-based apps and configurations."
