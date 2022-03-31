#!/bin/env bash
#Necessary Dialog Exit Links
: ${DIALOG_OK=0}
: ${DIALOG_CANCEL=1}
: ${DIALOG_ESC=255}
#Code
exec 3>&1
tput civis
dialog --backtitle "Update Wizard" --title "Welcome" --yes-label "Continue" --no-label "Cancel" --yesno "Welcome to Update Wizard\!. Here you can update your Proot-distro-TUI Here. Press Continue to Continue.. Cancel to abort. Old version will be backed up." 0 0 
exitvalue=$?
exec 3>&-
case $exitvalue in
 $DIALOG_OK)
  dialog --backtitle "Update wizard" --title "Loading" --infobox "Wait..." 0 0
  sleep 1
  mv -v proot-distro-tui old-proot-distro-tui$RANDOM | dialog --backtitle "Update Wizard" --title "Progress" --progressbox 30 65
  git clone https://github.com/SUFandom/proot-distro-tui | dialog -+backtitle "Update Wizard" --title "Downloading main Repo" --programbox 30 65
  dialog --backtitle "Update Wizard" --title "Done" --infobox "Process Done."
  sleep 1
  rm -rf upd-true.sh
  exit 0
  ;;
 $DIALOG_CANCEL)
  echo "$(tput setaf 1) Aborted"
  tput sgr0
  exit 1
  ;;
  esac
