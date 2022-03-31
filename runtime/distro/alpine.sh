#!/bin/env bash
#Exitvar
: ${DIALOG_OK=0}
: ${DIALOG_CANCEL=1}
: ${DIALOG_HELP=2}
: ${DIALOG_EXTRA=3}
: ${DIALOG_ITEM_HELP=4}
: ${DIALOG_ESC=255}
#Code
clear
tput civis
proot-distro install alpine
proot-distro login alpine
tput cnorm
exit 0
