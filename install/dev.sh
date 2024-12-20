# Run terminal installers
for installer in ~/.local/share/setup/install/dev/*.sh; do source $installer; done

# Green Check emoji
echo "✅ Finished installing all dev-based apps and configurations."
