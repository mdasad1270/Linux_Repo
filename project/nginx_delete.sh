#!/bin/bash

sudo systemctl stop nginx

sudo apt purge nginx nginx-common nginx-core -y

sudo apt autoremove -y

sudo rm -rf /etc/nginx
sudo rm -rf /var/log/nginx
sudo rm -rf /var/www/html
