
# get kernel version
KERNEL_VERSION=$(pacman -Q linux | awk '{print $1}')

# install evdi and displaylink
yay -S ${KERNEL_VERSION}-headers evdi displaylink --needed --noconfirm

# enable and start displaylink
sudo systemctl enable displaylink
sudo systemctl start displaylink
