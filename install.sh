#!/bin/bash

echo "\033[33mUpdate and upgrade the package lists from the repositories"
sudo apt update -y
sudo apt upgrade -y

echo "\033[33mInstall apache"
sudo apt install apache2 -y

echo "\033[33mTo enable apache to start automatically on system boot"
sudo systemctl enable apache2

echo "\033[33mInstall MySQL"
sudo apt install mysql-server -y

echo "\033[33mInstall PHP and some extansions"
sudo apt install php libapache2-mod-php php-mysql php-cli php-common php-zip php-simplexml php-gd php-curl php-intl -y

echo "\033[33mInstall PHP and some extansions"
sudo echo    "<IfModule mod_dir.c>" > /etc/apache2/mods-enabled/dir.conf
sudo echo -e "\tDirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm" >> /etc/apache2/mods-enabled/dir.conf
sudo echo    "</IfModule>" >> /etc/apache2/mods-enabled/dir.conf

echo "\033[33mRestart apache server"
sudo systemctl restart apache2

echo "\033[32mComplete"