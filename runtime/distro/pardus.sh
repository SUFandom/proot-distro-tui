#!/bin/bash
tput cnorm
termux-toast -g top -b yellow -c white "Pardus Running"
proot-distro install pardus
proot-distro login pardus
exit 0