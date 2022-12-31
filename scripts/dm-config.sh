#!/bin/sh
case "$(printf "bspwm\nconky\ndunst\nneofetch\nneofetch (ZSH)\nohmyzsh theme\npolybar\nsxhkd\nzsh" | dmenu -l 10 -X 0 -Y 0 -W 660 -i -p "dmenu:")" in
 	 "alacritty")       geany ~/.alacritty.yml ;;
      "bspwm")			geany ~/.config/bspwm/bspwmrc ;;
 	 "conky")			geany ~/.config/conky.conf ;;
 	 "dunst")			geany ~/.config/dunst/dunstrc ;;
     "neofetch")		geany ~/.config/neofetch/config.conf ;;
     "neofetch (ZSH)")	geany ~/.config/neofetch/configZSH.conf ;;
     "ohmyzsh theme")	zsh ~/.config/scripts/dm-zshtheme.sh ;;
     "p10k")			alacritte -e p10k configure ;;
	 "polybar") 		geany ~/.config/polybar/config.ini ;;
     "sxhkd")			geany ~/.config/sxhkd/sxhkdrc ;;
     "zsh")				geany ~/.zshrc ;;
	*) exit 1 ;;
esac
