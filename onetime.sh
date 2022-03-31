#!/bin/env bash
tput civis
echo "$(tput setaf 2) Running One Time Script..."
echo "$(tput setaf 1) Run this script one time only when necessary, if theres any issue, Report to the Developer. If you're wondering what does it do? well it just try to raise permission access of the script for usability.$(tput sgr0)"

sleep 3

echo -ne  '[                  ] [000%] \r'
chmod +x *.sh
sleep .5
echo -ne  '[####              ] [037%] \r'
chmod +x runtime/distro/*.sh
chmod +x runtime/undistro/*.sh
sleep .5
echo -ne  '[#############     ] [078%] \r'
chmod -x utils/*.sh
echo -ne  '[################  ] [097%] \r'
echo "Finalizing"
apt update
apt install dialog proot-distro -y
clear
sleep 1
echo -ne  '[##################] [100%] \r'
echo "Complete..., If there's errors, Try to check manually and report."
tput cnorm
clear
sh main.sh
