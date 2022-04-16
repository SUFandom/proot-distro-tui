#!/bin/env bash
tput cnorm
termux-toast -g top -b white -c green "OpenSUSe Running."
proot-distro install opensuse
proot-distro login opensuse
exit 0
