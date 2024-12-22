# Exit immediately if a command exits with a non-zero status
set -e

echo "🚀 Installing Setup..."

echo "🔗 Setting up pacman..."

sudo sed -i -e 's/#Color/Color/g' /etc/pacman.conf
sudo sed -i -e 's/ParallelDownloads = 4/ParallelDownloads = 10/g' /etc/pacman.conf
sudo sed -i -e 's/pkg.tar.zst/pkg.tar/g' /etc/makepkg.conf

sudo pacman -Syy

sudo pacman-mirrors --country ${COUNTRY:-Brazil}

sudo pacman -Syyuu --noconfirm
sudo pacman -S --noconfirm yay git base-devel

echo "🔗 Cloning Setup..."

rm -rf ~/.local/share/setup

git clone https://github.com/alkin/setup.git ~/.local/share/setup >/dev/null

echo "🚀 Installation starting..."

source ~/.local/share/setup/install.sh

