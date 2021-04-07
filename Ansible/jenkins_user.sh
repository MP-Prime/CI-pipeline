#!/bin/bash
if [! id -u "Jenkins" &>/dev/null]; then
    echo 'Jenkins  ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers
fi
