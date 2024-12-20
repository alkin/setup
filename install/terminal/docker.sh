# Install Docker engine and standard plugins
yay -S --needed docker docker-compose --noconfirm

# Give this user privileged Docker access
sudo usermod -aG docker ${USER}

# Limit log size to avoid running out of disk
sudo mkdir -p /etc/docker
if [ -f /etc/docker/daemon.json ]; then
  sudo jq -s '.[0] * .[1]' /etc/docker/daemon.json ~/.local/share/setup/configs/docker.json
else
  sudo cp ~/.local/share/setup/configs/docker.json /etc/docker/daemon.json
fi

# Start docker service
sudo systemctl restart docker.service

# Enable docker service
sudo systemctl enable docker.service

# Log into docker group
newgrp docker
