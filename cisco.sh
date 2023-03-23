#!/bin/bash

echo "============================"
echo "Changing wifi password in Cisco AP~~ by s4pphireek"
figlet s4pphireek

#creds
device=""
user=""
psw=""
wl=""  

hsw=$(tr -cd '[:alnum:]' < /dev/urandom | fold -w 12 | head -n 1) 
echo $hsw > file.txt
echo "Generated password: " $hsw
echo $wl > wl.txt

./wlc.exp $device $user $psw

rm -rf file.txt
rm -rf wl.txt
echo "============================="
echo "Password change DONE!"


