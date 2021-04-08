#!/bin/bash

if [ ! -x "$(command -v mysql)" ]; then
sudo apt update -y
sudo apt install mysql-client-core-8.0 -y
sudo apt-get update
sudo apt-get install python3.6
fi

echo "mysql_ins script executed"