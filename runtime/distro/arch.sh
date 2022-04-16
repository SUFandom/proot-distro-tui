#!/bin/env bash
clear
tput cnorm
termux-toast -b blue -c white -g top "Arch Linux Running"
proot-distro install archlinux
proot-distro login archlinux

exit 0
