# Run terminal installers
for installer in ~/.local/share/setup/install/init/*.sh; do source $installer; done

# Green Check emoji
echo "✅ Finished installing all init-based apps and configurations."
