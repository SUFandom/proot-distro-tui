#!/bin/env bash
#ExitVars

: ${DIALOG_OK=0}
: ${DIALOG_CANCEL=1}
: ${DIALOG_HELP=2}
: ${DIALOG_EXTRA=3}
: ${DIALOG_ITEM_HELP=4}
: ${DIALOG_ESC=255}
#GlobalVar
BK="PROOT-DISTRO-TUI HELP"
TITLE_UNO="Main Help(?) Menu"
TITLE_BASIC="Basic Help"
TITLE_DISTRO="Distro Help"
TITLE_ABOUT="ABOUT"
TITLE_UX_GIT="UNINSTALL GIT HELP"
TITLE_UX_DISTRO="UNINSTALL DISTRO"
TITLE_UPD="UPDATE GIT HELP"
#CODE
exec 3>&1
HLP=$( dialog --backtitle "$BK"  \
  --title "$TITLE_UNO" \
  --menu "Pick Any here. If issue persists, Go Issues at GitHub page.(ESC if stuck on Loop, spam it if continues)" 25 45 7 \
  "1" "About" \
  "2" "Basics" \
  "3" "Distro" \
  "4" "Uninstall Git" \
  "5" "Uninstall Distro" \
  "6" "Update Git" \
  2>&1 1>&3 \
  )
exits=$?
exec 3>&-
case $exits in
 $DIALOG_CANCEL)
  ./main.sh
 ;;
 $DIALOG_ESC)
 clear
 echo "$(tput setaf 1)Hard Exit Mode.$(tput sgr0)"
 exit 255
 ;;
 esac
 case $HLP in
 1)
 dialog --backtitle "$BK" --title "$TITLE_BASIC" --textbox help/about.txt 30 65
 ./help.sh
 ;;
 2)
 dialog --backtitle "$BK" --title "$TITLE_BASIC" --textbox help/basics.txt 30 65
 ./help.sh
 ;;
 3)
 dialog --backtitle "$BK" --title "$TITLE_DISTRO" --textbox help/distros.txt 30 65
 ./help.sh
 ;;
 4)
 dialog --backtitle "$BK" --title "$TITLE_UX_GIT" --textbox help/uninstall-git.txt 30 65
 ./help.sh
 ;;
 5)
 dialog --backtitle "$BK" --title "$TITLE_UX_DISTRO" --textbox help/uninstall.txt 30 65
 ./help.sh
;;
6)
 dialog --backtitle "$BK" --title "$TITLE_UPD" --textbox help/update-git.txt 30 65
 ./help.sh
 ;;
 esac
