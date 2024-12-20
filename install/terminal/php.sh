yay -Sy --noconfirm php php-sqlite php-gd php-intl php-iconv

# Install composer
yay -S composer --needed --noconfirm

# Enable php extensions
sudo sed -i -E 's|;(extension.*sqlite.*)|\1|g' /etc/php/php.ini
sudo sed -i -E 's|;(extension.*mysql.*)|\1|g' /etc/php/php.ini
sudo sed -i -E 's|;(extension.*gd.*)|\1|g' /etc/php/php.ini
sudo sed -i -E 's|;(extension.*intl.*)|\1|g' /etc/php/php.ini
sudo sed -i -E 's|;(extension.*iconv.*)|\1|g' /etc/php/php.ini