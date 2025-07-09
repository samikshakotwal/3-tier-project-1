#!/bin/bash
cd /home/ubuntu/3-tier-project-1

sudo run -it -d -p 81:80 web
sudo run -it -d -p 4000:4000 app

