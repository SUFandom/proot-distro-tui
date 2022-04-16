#!/bin/env bash
tput cnorm
termux-toast -g top -b green -c white "VoidLinux Running"
proot-distro install void
proot-distro login void
exit 0
