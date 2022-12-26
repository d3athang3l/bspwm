# bspwm
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Pfeffimann18/bspwm)
![GitHub repo size](https://img.shields.io/github/repo-size/Pfeffimann18/bspwm)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/Pfeffimann18/bspwm)
![GitHub](https://img.shields.io/github/license/Pfeffimann18/bspwm) </br>
[README (English)](https://github.com/Pfeffimann18/bspwm/blob/main/README_ENG.md)
</br>

<p align="center">
  <img src="https://thumbs2.imgbox.com/06/86/kJbzbfji_t.png" width="900px">
</p>

<p align="center">
  <img src="https://thumbs2.imgbox.com/45/c9/FzDWwV73_t.png" width="900px">
</p>
</br>

## Installation der erforderlichen Pakete
```bash
yay -S xf86-video-amdgpu xorg xorg-xinit bspwm sxhkd nitrogen rofi picom alacritty firefox arandr ranger bashtop
```
> Kopieren Sie außerdem [ZSH](https://github.com/Pfeffimann18/ZSH), [Alacritty](https://github.com/Pfeffimann18/ArchBasicSetup/blob/main/alacritty.yml), [Rofi](https://github.com/Pfeffimann18/ArchBasicSetup/tree/main/rofi) und [Picom](https://github.com/Pfeffimann18/ArchBasicSetup/blob/main/picom.conf). 
</br>

```bash
mkdir ~/.config/bspwm
mkdir ~/.config/sxhdk
cp bspwmrc ~/.config/bspwm
cp sxhkdrc ~/.config/sxhkd
cp .xinitrc ~
```
</br>

## Verzeichnisse erstellen
```bash
mkdir ~/.screenlayout
mkdir ~/.config/bspwm
mkdir ~/.config/sxhdk
mkdir ~/.config/polybar
mkdir ~/.config/ranger/
mkdir ~/.config/ranger/colorschemes
```
</br>

## Konfigurationsdateien kopieren
```bash
cp display.sh ~/.screenlayout
chmod +x display.sh
cp config.ini ~/.config/polybar
```
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

## dmenu-xyw
```bash
cd /opt
sudo git clone https://github.com/jakeogh/dmenu-xyw.git
sudo chown -R leon:wheel dmenu-xyw && cd dmenu-xyw # Catppuccin-Farben in config.def.h übernehmen
sudo make clean install
```
```bash
# program launcher
super + @space
	/opt/dmenu-xyw/dmenu-xyw_run -l 20 -x 0 -y 0 -z 660 -p 'Run: ' "$@"
```
> In `.sxhkdrc` einfügen

</br>

## Powermenü
`sysstate.sh` nach `~/.config/bspwm/scripts/` kopieren.
```bash
# power-menu 
super + shift + e
     ~/.config/bspwm/scripts/sysstate.sh
```
> In `.sxhkdrc` einfügen