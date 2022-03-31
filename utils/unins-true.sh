#!/bin/env bash
#Necessary Dialog Exit Links
: ${DIALOG_OK=0}
: ${DIALOG_CANCEL=1}
: ${DIALOG_ESC=255}
#Code
tput civis
exec 3>&1
dialog --backtitle "Uninstall Wizard" --title "Uninstall" --yes-label "Remove" --no-label "Exit" --yesno "Welcome To Uninstaller Wizard, where the proot-distro will be removed here.. Select Remove to Remove while Exit to cancel.." 0 0
exitvar=$?
exec 3>&-
case $exitvar in
 $DIALOG_OK)
 clear
 rm -rf "proot-distro-tui"
 echo "$(tput setaf 2)Done, if you had updated this script before, you may want to remove the old versions manually.."
 tput sgr0
 tput cnorm
 ;;
 $DIALOG_CANCEL)
 clear
 tput sgr0
 tput cnorm
 rm -rf unins-true.sh
 exit 0
;;
 $DIALOG_ESC)
 clear
 echo "$(tput setaf 1) Exit 255 Occured, Exiting"
 tout sgr0
 tput cnorm
 rm -rf unins-true.sh
 exit 0
 ;;
 esac
