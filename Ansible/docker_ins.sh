#!/bin/bash

if [ ! -x "$(command -v docker)" ]; then
sudo apt-get update
sudo apt install curl -y
curl https://get.docker.com | sudo bash
sudo usermod -aG docker $(whoami)
fi

echo "docker_ins script executed"