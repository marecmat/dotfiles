#!/bin/bash

status=$(sudo systemctl status homevpn | grep -o '.\{0,0\}active (running).\{0,0\}')

if [[ $status == *"active (running)"* ]]; then
    echo "ON"
else
    echo "OFF"
fi
