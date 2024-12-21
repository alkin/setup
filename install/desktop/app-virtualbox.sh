# get kernel version
KERNEL_VERSION=$(pacman -Q linux | awk '{print $1}')

yay -S --needed virtualbox ${KERNEL_VERSION}-virtualbox-host-modules virtualbox-ext-oracle --noconfirm
sudo usermod -aG vboxusers ${USER}
newgrp vboxusers

sudo vboxreload