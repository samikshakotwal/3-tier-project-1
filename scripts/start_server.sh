#!/bin/bash

sudo docker stop react-frontend || true
sudo docker rm react-frontend || true
sudo docker stop node-backend || true
sudo docker rm node-backend || true

cd /home/ubuntu/3-tier-project-1

sudo run -it -d --name react-forntend -p 81:80 web
sudo run -it -d -p --name react-backend 4000:4000 app

