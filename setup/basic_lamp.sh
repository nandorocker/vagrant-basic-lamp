#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo aptitude update
sudo aptitude install build-essential
sudo apt-get install -y vim curl git-core apache2 php5 php5-mysql php5-gd php5-curl
sudo debconf-set-selections <<< 'mysql-server-<version> mysql-server/root_password password  '
sudo debconf-set-selections <<< 'mysql-server-<version> mysql-server/root_password_again password  '
sudo apt-get -y install mysql-server
sudo service apache2 restart
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
sudo cp -f /vagrant/setup/apache_conf /etc/apache2/sites-available/
sudo apt-get -y install phpmyadmin