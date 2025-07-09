#!/bin/bash


sudo apt-get update -y
sudo apt install nginx -y
sudo apt install docker.io -y
sudo apt install git -y

sudo systemctl start nginx
sudo systemctl start docker


# Optional: Remove default config if needed
sudo rm -f /etc/nginx/nginx.conf

sudo cp ./application-code/web-tier/nginx.conf /etc/nginx/

echo "Reloading nginx..."
sudo systemctl reload nginx

# Make all .sh files executable
chmod +x /home/ubuntu/scripts/*.sh

echo "Permissions set for all .sh files"
