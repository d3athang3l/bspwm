#!/bin/sh
case "$(printf "bspwm\nconky\ndunst\nneofetch\nneofetch (ZSH)\nohmyzsh theme\npolybar\npolybar - icons\npolybar - name\nsxhkd\nzsh" | dmenu -l 20 -X 0 -Y 0 -W 660 -i -p "dmenu:")" in
 	"alacritty")        code ~/.alacritty.yml ;;
    "bspwm")			code ~/.config/bspwm/bspwmrc ;;
 	"conky")			code ~/.config/conky.conf ;;
 	"dunst")			code ~/.config/dunst/dunstrc ;;
    "neofetch")		    code ~/.config/neofetch/config.conf ;;
    "neofetch (ZSH)")	code ~/.config/neofetch/configZSH.conf ;;
    "ohmyzsh theme")	zsh ~/.config/scripts/dm-zshtheme.sh ;;
    "p10k")			    alacritte -e p10k configure ;;
	"polybar") 		    code ~/.config/polybar/config.ini ;;
    "polybar - icons") 	zsh ~/.config/scripts/dm-polybar-icons.sh ;;
    "polybar - name") 	zsh ~/.config/scripts/dm-polybar-name.sh ;;
    "sxhkd")			code ~/.config/sxhkd/sxhkdrc ;;
    "zsh")			    code ~/.zshrc ;;
	*) exit 1 ;;
esac
