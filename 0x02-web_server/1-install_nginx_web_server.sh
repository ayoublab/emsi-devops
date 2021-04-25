#!/usr/bin/env bash

sudo apt-get install nginx -y 
echo "Welcome to Holberton School" > test.html
sudo cp test.html /var/www/html/index.nginx-debian.html
systemctl restart nginx 