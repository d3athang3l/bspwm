#!/bin/sh
# Script for system states
case "$(printf "Herunterfahren\nNeustarten\nEnergie sparen\nAbmelden\nSperren" | dmenu -l 10 -X 0 -Y 0 -W 660 -i -p "system:")" in
	 "Herunterfahren") 		poweroff ;;
 	 "Neustarten") 			poweroff --reboot ;;
 	 "Energie sparen") 		systemctl suspend ;;
 	 "Abmelden") 			bspc quit ;;
     "Sperren") 			~/.config/bspwm/scripts/i3lock-fancy/i3lock-fancy.sh ;;
	*) exit 1 ;;
esac
