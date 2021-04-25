#!/usr/bin/env bash

sudo apt-get install nginx -y 
mkdir /var/www/myHolbertonPage/
cd /var/www/myHolbertonPage/
touch index.html
echo "Welcome to Holberton School" > index.html
sudo sed - i "s/\/var\/www\/html/\/var\/www\/myHolberonPage" /etc/nginx/sites-enabled/default
sudo systemctl restart nginx 