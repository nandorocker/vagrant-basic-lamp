#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo aptitude update
sudo aptitude install build-essential
sudo apt-get install -y vim curl git-core apache2 php5 php5-mysql php5-gd php5-curl
sudo apt-get -qy install mysql-server
echo -e \\033c # resets characters after mySQL sets everything crazy
sudo cp -f setup/apache_conf /etc/apache2/sites-available/
sudo service apache2 restart
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
sudo apt-get -y install phpmyadmin