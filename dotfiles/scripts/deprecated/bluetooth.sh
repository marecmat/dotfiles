#!/bin/bash

MAC_ADDRESS=$1

echo -e "disconnect $MAC_ADDRESS\n"
echo -e "remove $MAC_ADDRESS\n"
echo -e "scan on\n"
sleep 5

echo -e "pair $MAC_ADDRESS\n"
sleep 3
echo -e "connect $MAC_ADDRESS\n"

sleep 5
echo -e "quit\n"
