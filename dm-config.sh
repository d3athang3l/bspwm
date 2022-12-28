#!/bin/sh
case "$(printf "polybar\nconky\nbspwm\nsxhkd\nneofetch\nneofetch (ZSH)\nzsh" | dmenu -l 10 -X 0 -Y 0 -W 660 -i -p "dmenu:")" in
	 "polybar") 		geany ~/.config/polybar/config.ini ;;
 	 "conky")			geany ~/.config/conky.conf ;;
 	 "bspwm")			geany ~/.config/bspwm/bspwmrc ;;
     "sxhkd")			geany ~/.config/sxhkd/sxhkdrc ;;
     "neofetch")		geany ~/.config/neofetch/config.conf ;;
     "neofetch (ZSH)")	geany ~/.config/neofetch/configZSH.conf ;;
     "zsh")				geany ~/.zshrc ;;
	*) exit 1 ;;
esac
