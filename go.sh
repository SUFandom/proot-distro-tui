#!/bin/env bash 
#ExitVar
: ${DIALOG_OK=0}
: ${DIALOG_CANCEL=1}
: ${DIALOG_HELP=2}
: ${DIALOG_EXTRA=3}
: ${DIALOG_ITEM_HELP=4}
: ${DIALOG_ESC=255}
#GlobalVar
BT="PICK A DISTRO"
#CODE
tput civis
exec 3>&1
DISTROLINUX=$( dialog --backtitle "$BT" \
  --title "Choose To Open a Distro, ESC when Exiting.. And if you're stuck on the Loop, use ESC\!" \
  --yes-label "Run" \
  --no-label "Back" \
  --menu "Pick Your Distro\!  (Alphabetical Order)" 25 45 9 \
  "1" "Alpine Linux" \
  "2" "Arch Linux (I use arch BTW moment)" \
  "3" "Debian" \
  "4" "Fedora" \
  "5" "Manjaro (ARM64 Only)" \
  "6" "OpenSuse" \
  "7" "Ubuntu" \
  "8" "Void Linux" \
  2>&1 1>&3 \
  )
exitvalue=$?
exec 3>&-
case $exitvalue in
$DIALOG_CANCEL)
 tput cnorm
 ./main.sh
 ;;
 $DIALOG_ESC)
 echo "$(tput setaf 160)Hard Exit mode due to Execution of 255 (You Pressed ESC Key)..$(tput sgr0)"
 tput cnorm
 exit 255
 ;;
esac
case $DISTROLINUX in
 1)
 clear
if ( dialog --backtitle "$BT" --title "Alpine Linux" --yes-label "Run\!" --no-label "Back" --yesno "Alpine Linux is a Lightweight Linux Distribution, Once Runs on Android system, it stays running on Your RAM so its respnse and Performance is Extraordinary, This is a go-to for users who want to experience Fast Linux operating System.. (Supports ARMv8l under ARMv7a)" 0 0 )
then
 ./runtime/distro/alpine.sh 
 else
 ./go.sh
 fi
 ;;
 2)
 clear
 if ( dialog --backtitle "$BT" --title "Arch Linux" --yes-label "Run\!" --no-label "Back" --yesno "Arch Linux is a Linux distribution created for computers with x86-64 processors. Arch Linux adheres to the KISS principle, But works on ARM! (only work on Pure ARMv7 and ARM64, Architecture running ARMv8l or 64bit CPU running 32Bit Mode, Doesn't work properly.)" 0 0 )
 then
 ./runtime/distro/arch.sh
 else
 ./go.sh
 fi
 ;;
 3)
 clear
 if ( dialog --backtitle "$BT" --title "Debian" --yes-label "Run\!" --no-label "Back" --yesno "Debian, also known as Debian GNU/Linux, is a GNU/Linux distribution composed of free and open-source software, developed by the community-supported Debian Project, which was established by Ian Murdock on August 16, 1993 (LLVMPIPE may Be disabled by Default all throughout arm architecture except Qualcomm with Adreno GPU Chipset, so you cant run Mesa without telling the command line that you need to activate it. That also being limited access to All desktop environment.)" 0 0 )
 then
 ./runtime/distro/debian.sh 
 else
 ./go.sh
 fi
 ;;
 4)
 if ( dialog --backtitle "$BT" --title "Fedora" --yes-label "Run\!" --no-label "Back" --yesno "Fedora Linux is a Linux distribution developed by the Fedora Project which is sponsored primarily by Red Hat with additional support and sponsors from other companies and organizations.. (This Distro only works Properly in Real ARMv7 and ARM64, Chipset Running 64Bit CPU while 32Bit Mode may suffer from issues installing Packages)" 0 0 )
 then
 ./runtime/distro/fedora.sh
 else
 ./go.sh
 fi
 ;;
 5)
 if ( dialog --backtitle "$BT" --title "Manjaro Linux (ARM64)" --yes-label "Run\!" --no-label "Back" --yesno "Manjaro is a free and open-source Linux distribution based on the Arch Linux operating system. Manjaro has a focus on user-friendliness and accessibility. It features a rolling release update model and uses Pacman as its package manager. Manjaro is mainly developed in Austria, France and Germany. (This only works on ARM64 so dont spam Some shit on Issues page on the GitHub Page About this.)" 0 0 )
 then 
 ./runtime/distro/manjaro64.sh
 else
 ./go.sh
 fi
 ;;
 6)
 if ( dialog --backtitle "$BT" --title "OpenSuse" --yes-label "Run\!" --no-label "Back" --yesno "openSUSE is a project that serves to promote the use of free and open-source software. openSUSE is well known for its Linux distributions, mainly Tumbleweed, a tested rolling release, and Leap, a distribution with long-term support.(OpenSuse is very slow at 32Bit)" 0 0 )
 then 
 ./runtime/distro/opensuse.sh 
 else
 ./go.sh
 fi
 ;;
 7)
 if ( dialog --backtitle "$BT" --title "Ubuntu" --yes-label "Run\!" --no-label "Back" --yesno "Ubuntu is the modern, open source operating system on Linux for the enterprise server, desktop, cloud, and IoT. (Same with Debian, LLVMPIPE is Disabled by Default under ARM, You cant run software that rely on OpenGL Render. Unless you type an extra command or You have Adreno GPU" 0 0  )
 then
 ./runtime/distro/ubuntu.sh
 else
 ./go.sh
 fi
 ;;
 8)
 if ( dialog --backtitle "$BT" --title "Void Linux" --yes-label "Run\!" --no-label "Back" --yesno "Void Linux is an independent Linux distribution that uses the X Binary Package System package manager, which was designed and implemented from scratch, and the runit init system" 0 0 )
 then
 ./runtime/distro/void.sh
 else
 ./go.sh
 fi
 ;;
 esac
