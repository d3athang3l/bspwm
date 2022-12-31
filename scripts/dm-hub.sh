#!/bin/sh
case "$(printf "   edit configs (geany)\n   edit configs (vscode)\n勒   reload configs\nﮮ   updates\n嗀   set theme\n   set background\n   display settings\n   taskmanager\n   exit bspwm" | dmenu -l 20 -X 0 -Y 0 -W 660 -i -p "system:")" in
     "   edit configs (geany)")          zsh ~/.config/scripts/dm-config-geany.sh ;;
     "   edit configs (vscode)")          zsh ~/.config/scripts/dm-config-vscode.sh ;;
     "勒   reload configs")        zsh ~/.config/scripts/dm-reload-files.sh ;;
     "ﮮ   updates")               alacritty -e yay -Syu --noconfirm ;;
     "嗀   set theme")             lxappearance ;;
     "   set background")        nitrogen ;;
     "   display settings")  lxrandr ;;
     "   taskmanager")           alacritty -e btop ;;
     "   exit bspwm")             zsh ~/.config/scripts/dm-sysstate.sh ;;
	*) exit 1 ;;
esac
