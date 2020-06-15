#!/bin/bash

#--------------
#
#   Please look inside the README.md file for all the steps you'll need to follow
#
#--------------

#preinstall
apt-get update
apt-get install -y nano vim htop telnet git curl gcc openssh-server net-tools mlocate zip unzip whois
sed -i -e 's/^PermitRootLogin/#PermitRootLogin/g' /etc/ssh/sshd_config

#Setup Repo for all mainframe PHP versions.
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/nginx
apt-get update

apt install php7.4-fpm php7.4-common php7.4-cli
apt install php7.4-bcmath php7.4-bz2 php7.4-curl php7.4-gd php7.4-intl php7.4-json php7.4-mbstring php7.4-readline php7.4-xml php7.4-zip php7.4-mysql

#installing composer (globally)
wget https://getcomposer.org/composer.phar -O /usr/local/bin/composer
chmod 755 /usr/local/bin/composer

#installing nodeJS. (package will also install npm autom.)
apt-get install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt-get install nodejs

#setup the latest version of nginx (lts)
apt-get -y install nginx nginx-extras

#Setup Mysql.
apt-get install -y mysql-server mysql-client python-mysqldb

#Cleanup some mess.
apt autoremove

echo "Script is done! Restart NGINX & PHP First.."
