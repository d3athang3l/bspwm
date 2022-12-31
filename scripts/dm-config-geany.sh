#!/bin/sh
case "$(printf "bspwm\nconky\ndunst\nneofetch\nneofetch (ZSH)\nohmyzsh theme\npolybar\npolybar - icons\npolybar - name\nsxhkd\nzsh" | dmenu -l 20 -X 0 -Y 0 -W 660 -i -p "dmenu:")" in
 	"alacritty")        geany ~/.alacritty.yml ;;
     "bspwm")			geany ~/.config/bspwm/bspwmrc ;;
 	"conky")			geany ~/.config/conky.conf ;;
 	"dunst")			geany ~/.config/dunst/dunstrc ;;
     "neofetch")		geany ~/.config/neofetch/config.conf ;;
     "neofetch (ZSH)")	geany ~/.config/neofetch/configZSH.conf ;;
     "ohmyzsh theme")	zsh ~/.config/scripts/dm-zshtheme.sh ;;
     "p10k")			alacritte -e p10k configure ;;
	"polybar") 		geany ~/.config/polybar/config.ini ;;
     "polybar - icons") 	zsh ~/.config/scripts/dm-polybar-icons.sh ;;
     "polybar - name") 	zsh ~/.config/scripts/dm-polybar-name.sh ;;
     "sxhkd")			geany ~/.config/sxhkd/sxhkdrc ;;
     "zsh")			geany ~/.zshrc ;;
	*) exit 1 ;;
esac
