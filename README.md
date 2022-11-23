# bspwm
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Pfeffimann18/bspwm)
![GitHub repo size](https://img.shields.io/github/repo-size/Pfeffimann18/bspwm)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/Pfeffimann18/bspwm)
![GitHub](https://img.shields.io/github/license/Pfeffimann18/bspwm)
</br>

## Basisinstallation

## Verzeichnisse erstellen
```bash
mkdir ~/.screenlayout
mkdir ~/.config/bspwm
mkdir ~/.config/sxhdk
mkdir ~/.config/polybar
```

## Konfigurationsdateien kopieren
```bash
cp display.sh ~/.screenlayout
cp config.ini ~/.config/polybar
cp picom.conf ~/.config
cp bspwmrc ~/.config/bspwm
cp sxhdkrc ~/.config/sxhdk
cp .xinitrc ~
```

## Installation der erforderlichen Pakete
```bash
paru -S xf86-video-amd xorg xorg-xinit bspwm sxhkd nitrogen rofi picom alacritty firefox arandr ranger bashtop
```