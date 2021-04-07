#!/bin/bash
 path_to_executable=$(which aws)
 if [ ! -x "$path_to_executable" ] ; then
sudo apt update -y && sudo apt install curl unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
fi

echo "aws_cli_ins script executed"