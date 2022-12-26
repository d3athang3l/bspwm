#!/bin/sh
# Script for system states
case "$(printf "Herunterfahren\nNeustarten\nAbmelden\nSperren\n" | /opt/dmenu-xyw/dmenu-xyw -l 10 -x 0 -y 0 -z 660 -i -p "system:")" in
	 "Herunterfahren") sudo poweroff ;;
 	 "Neustarten") sudo reboot ;;
 	 "Abmelden") bspc quit ;;
     "Sperren") /home/$USER/.config/bspwm/scripts/i3lock-fancy/i3lock-fancy.sh ;;
	*) exit 1 ;;
esac
