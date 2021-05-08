#!/usr/bin/env bash

mystring="\\\tlocation /redirect_me {\n\t return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;\n\t}\n"
sudo apt-get update
sudo apt-get -y install nginx
echo "Holberton school" > index.html
sudo mv index.html /var/www/html/index.html
sudo sed -i "48i $mystring" /etc/nginx/sites-available/default 
sudo service nginx start
sudo nginx -t
sudo systemctl restart nginx