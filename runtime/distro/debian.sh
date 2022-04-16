#!/bin/env bash
termux-toast -g top -b red -c white "Debian Now Running"
tput cnorm
proot-distro install debian
proot-distro login debian

exit 0
