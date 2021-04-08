#!/bin/bash

sudo apt update
sudo apt install -y python3-pip
cd CI-pipeline/Jenkins_frontend 
pip3 install -r requirements.txt
python3 app.py