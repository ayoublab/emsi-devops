#!/usr/bin/env bash

sudo apt-get install nginx -y 
sudo mkdir /var/www/myHolbertonPage/
sudo echo "Welcome to Holberton School" > index.html
sudo cp index.html /var/www/myHolbertonPage/
sudo sed -i s/"\/var\/www\/html"/"\/var\/www\/myHolbertonPage"/g /etc/nginx/sites-enabled/default
sudo systemctl restart nginx 
