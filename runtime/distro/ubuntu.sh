#!/bin/env bash
termux-toast -g top -b orange -c white "Ubuntu (Debian) Running"
tput cnorm
proot-distro install ubuntu
proot-distro login ubuntu
exit 0
