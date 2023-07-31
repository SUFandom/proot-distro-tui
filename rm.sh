#!/bin/env bash

#EXITVAR

: ${DIALOG_OK=0}
: ${DIALOG_CANCEL=1}
: ${DIALOG_HELP=2}
: ${DIALOG_EXTRA=3}
: ${DIALOG_ITEM_HELP=4}
: ${DIALOG_ESC=255}

# Code
tput civis
exec 3>&1
UX=$( dialog --backtitle "Remove" \
  --title "Remove a Distro" \
  --yes-label "Remove" \
  --no-label "Back" \
  --menu "Choose to Remove a Distro, You cannot Undo this Process\!" 25 45 9 \
  "1" "Alpine Linux" \
  "2" "Arch Linux (Arch Swag go byebye)" \
  "3" "Debian" \
  "4" "Fedora" \
  "5" "Manjaro (AARCH64)" \
  "6" "OpenSUSE" \
  "7" "Pardus"
  "8" "Ubuntu" \
  "9" "Void" \
  2>&1 1>&3 \
  )
exitvariable=$?
exec 3>&-
case $exitvariable in
$DIALOG_CANCEL)
tput cnorm
 ./main.sh
 ;;
 $DIALOG_ESC)
 echo "$(tput setaf 1)Hard Exit Mode, Exit Code $exitvariable..$(tput sgr0)"
 tput cnorm
 exit 255
 ;;
 esac
 case $UX in
 1)
 if ( dialog --backtitle "Oh no\!" --title "Are you Sure?" --yes-label "Remove it\!" --no-label "Back" --yesno "Are you sure to Remove Alpine?" 0 0 )
 then
 tput cnorm 
 ./runtime/undistro/alpine.sh
 else
 ./rm.sh
 fi
 ;;
 2)
 if ( dialog --backtitle "Oh no\!" --title "Are you sure?" --yes-label "Remove it\!" --no-label "Back" --yesno "Are you sure to Remove Arch Linux?" 0 0 )
 then 
tput cnorm
./runtime/undistro/arch.sh
else
./rm.sh
fi
;;
3) 
if (dialog --backtitle "Oh no\!" --title "Are you sure?" --yes-label "Remove it\!" --no-label "Back" --yesno "Are you sure to Remove Debian?" 0 0 )
then
tput cnorm
./runtime/undistro/debian.sh
else
./rm.sh
fi 
;;
4)
if (dialog --backtitle "Oh no\!" --title "Are you sure?" --yes-label "Remove it\!" --no-label "Back" --yesno "Are you sure to Remove Fedora?" 0 0 )
then
tput cnorm
./runtime/undistro/fedora.sh
fi 
;;
5)
if (dialog --backtitle "Oh no\!" --title "Are you sure?" --yes-label "Remove it\!" --no-label "Back" --yesno "Are you sure to Remove Manjaro?" 0 0 )
then
tput cnorm
./runtime/undistro/fedora.sh 
else
./rm.sh
fi 
;;
6)
if (dialog --backtitle "Oh no\!" --title "Are you sure?" --yes-label "Remove it\!" --no-label "Back" --yesno "Are you sure to Remove Opensuse?" 0 0 )
then
tput cnorm
./runtime/undistro/opensuse.sh 
else
./rm.sh
fi
;;
 7)
 if ( dialog --backtitle "$BT" --title "Pardus" --yes-label "Run\!" --no-label "Back" --yesno "Are you sure to remove Pardus?" 0 0 )
 then 
 ./runtime/undistro/pardus.sh 
 else
 ./rm.sh
 fi
 ;;
8)
if (dialog --backtitle "Oh no\!" --title "Are you sure?" --yes-label "Remove it\!" --no-label "Back" --yesno "Are you sure to Remove Ubuntu?" 0 0 )
then
tput cnorm
./runtime/undistro/ubuntu.sh
else
./rm.sh
fi
;;
9)
if (dialog --backtitle "Oh no\!" --title "Are you sure?" --yes-label "Remove it\!" --no-label "Back" --yesno "Are you sure to Remove Void?" 0 0 )
then 
tput cnorm
./runtime/undistro/void.sh
else
./rm.sh
fi 
;;
esac 
