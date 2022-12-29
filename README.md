# <span style="color:#8bd5ca">bspwm</span>
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Pfeffimann18/bspwm)
![GitHub repo size](https://img.shields.io/github/repo-size/Pfeffimann18/bspwm)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/Pfeffimann18/bspwm)
![GitHub](https://img.shields.io/github/license/Pfeffimann18/bspwm); 
[README (English)](https://github.com/Pfeffimann18/bspwm/blob/main/README_ENG.md)
</br>

<p align="center">
  <img src="https://thumbs2.imgbox.com/06/86/kJbzbfji_t.png" width="900px">
</p>

<p align="center">
  <img src="https://thumbs2.imgbox.com/45/c9/FzDWwV73_t.png" width="900px">
</p>
</br>

# <span style="color:#8bd5ca">Konfiguration</span>
## <span style="color:#8bd5ca">Lautstärketasten anpassen</span>
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

## <span style="color:#8bd5ca">dmenu-flexipatch</span>
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

## <span style="color:#8bd5ca">Powermenü</span>
`sysstate.sh` nach `~/.config/bspwm/scripts/` kopieren.
```bash
# power-menu 
super + shift + e
     ~/.config/bspwm/scripts/sysstate.sh
```
> In `.sxhkdrc` einfügen