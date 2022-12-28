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