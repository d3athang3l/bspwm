# bspwm
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Pfeffimann18/bspwm)
![GitHub repo size](https://img.shields.io/github/repo-size/Pfeffimann18/bspwm)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/Pfeffimann18/bspwm)
![GitHub](https://img.shields.io/github/license/Pfeffimann18/bspwm); 
[README (English)](https://github.com/Pfeffimann18/bspwm/blob/main/README_ENG.md)
</br>

<p align="center">
  <img src="https://thumbs2.imgbox.com/06/86/kJbzbfji_t.png" width="900px">


<p align="center">
  <img src="https://thumbs2.imgbox.com/45/c9/FzDWwV73_t.png" width="900px">

</br>

```bash
yay -S alacritty thunar firefox
```

# Features
- Polybar mit Icons oder Namen; [spotify modul](https://github.com/PrayagS/polybar-spotify)
- dmenu-prompt zum starten von Programmen
- dm-hub für Einstellungen
- `screen_msg.sh` für Benachrichtigung zum Desktopwechsel

</br>

# Konfiguration </br>
## Skripte
Als erstes sollten sie ein Verzeichniss für die Skripte erstellen und sie dann kopieren.

## Polybar
`~/.config/polybar/launch.sh`
```
#!/usr/bin/zsh
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
MONITOR=HDMI-0 polybar mybar &
MONITOR=DVI-0 polybar secondary &
```
</br>

## dmenu-flexipatch
```bash
cd /opt
sudo git clone https://github.com/bakkeby/dmenu-flexipatch
sudo chown -R leon:wheel dmenu-flexipatch && cd dmenu-flexipatch
```
In der `config.def.h` die Catppuccin Farben einfügen und in `patches.h` bei `GRID_PATCH`, `HIGHPRIORITY_PATCH`, `SCROLL_PATCH` und `XYW_PATCH` die 0 zu einer 1 abändern.

Anschließedn mit `sudo make clean install` dmenu installieren.
```bash
# program launcher
super + shift + Return
	dmenu_path | dmenu_run -l 20 -g 3 -X 0 -Y 0 -W 680 -p 'Run: ' "$@"
```
> In `.sxhkdrc` einfügen

</br>


## Lautstärketasten anpassen
```bash
# Multimedia keys
XF86AudioRaiseVolume
  amixer -D pulse sset Master 5%+ unmute

# Still multimedia
XF86AudioLowerVolume
  amixer -D pulse sset Master 5%- unmute

# still
XF86AudioMute
  amixer -D pulse sset Master toggle-mute
```
</br>

## Powermenü
`dm-sysstate.sh` nach `~/.config/scripts/` kopieren.
```bash
# power-menu 
super + shift + e
     ~/.config/bspwm/scripts/sysstate.sh
```
> In `.sxhkdrc` einfügen

## Polybar - Spotify
> [https://github.com/PrayagS/polybar-spotify](https://github.com/PrayagS/polybar-spotify)