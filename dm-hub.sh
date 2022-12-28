#!/bin/sh
case "$(printf "Konfigurationsdateien bearbeiten\nnitrogen\nUpdates\nErscheinungsbild anpassen\nHintergrundbild auswählen\nDisplayeinstellungen\nDateien neu laden\nTaskmanager\nVerlassen" | dmenu -l 10 -X 0 -Y 0 -W 660 -i -p "dmenu:")" in
     "Konfigurationsdateien bearbeiten")    bash ~/.config/bspwm/scripts/dm-config.sh ;;
     "Updates")                             alacritty -e yay -Syu --noconfirm ;;
     "Erscheinungsbild anpassen")           lxappearance ;;
     "Hintergrundbild auswählen")           nitrogen ;;
     "Displayeinstellungen")                lxrandr ;;
     "Dateien neu laden")                   bash ~/.config/bspwm/scripts/dm-reload-files.sh ;;
     "Taskmanager")                         btop ;;
     "Verlassen")                           bash ~/.config/bspwm/scripts/dm-sysstate.sh ;;
	*) exit 1 ;;
esac
