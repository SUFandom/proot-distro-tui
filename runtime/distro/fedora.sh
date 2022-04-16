#!/bin/env bash
tput cnorm
termux-toast -g top -b blue -c white "Fedora Running"
proot-distro install fedora
proot-distro login fedora
exit 0
