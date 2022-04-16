#!/bin/env bash
tput cnorm
termux-toast -g top -b green -c white "Manjaro (AARCH64) Running"
proot-distro install manjaro-aarch64
proot-distro login manjaro-aarch64
exit 0
