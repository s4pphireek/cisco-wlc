#!/bin/bash

echo "============================"
echo "Changing wifi password in Cisco AP~~ by sapphire"

#creds
device=""
user=""
psw=""
wl=""  

haslo=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w 12 | head -n 1) 
echo $haslo > file.txt
echo "Generated password: " $haslo
echo $wl > wl.txt

./wlc.exp $device $user $psw

rm -rf file.txt
rm -rf wl.txt
echo "============================="
echo "Password change DONE!"


