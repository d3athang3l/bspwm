# bspwm

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