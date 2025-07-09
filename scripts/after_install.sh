#!/bin/bash

cd /home/ubuntu/application-code/web-tier/
sudo docker build -t web .

cd ./application-code/app-tier/
sudo docker build -t app .
