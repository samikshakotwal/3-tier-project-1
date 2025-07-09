#!/bin/bash

cd ./application-code/web-tier/
sudo build -t web .

cd ./application-code/app-tier/
sudo build -t app .
