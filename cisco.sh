#!/bin/bash

echo "============================"
echo "Changing wifi password in Cisco AP~~ by sapphire"

haslo=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w 12 | head -n 1) 
echo $haslo > file.txt
echo "Wygnerowano haslo: " $haslo

./wlc.exp <device_IP> <user> <password>

echo "============================="
echo "Password change DONE!"

