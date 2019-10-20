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
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
apt-get update

apt install php7.3 php7.3-common php7.3-cli
apt install php7.3-bcmath php7.3-bz2 php7.3-curl php7.3-gd php7.3-intl php7.3-json php7.3-mbstring php7.3-readline php7.3-xml php7.3-zip
apt install php7.3-fpm

#repos for php 7
#apt-get -y install software-properties-common
#install php 7.3 (latest)
#apt-get -y install php7.3 php7.3-fpm php7.3-gd php7.3-mysql php7.3-dev php7.3-curl php7.3-mbstring php7.3-xml php7.3-imap php7.3-zip
#install php 5.6 (older one, for historical projects)
#apt-get -y install php5.6 php5.6-mcrypt php5.6-fpm php5.6-gd php5.6-mysql php5.6-dev php5.6-curl php5.6-mbstring php5.6-dom

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
