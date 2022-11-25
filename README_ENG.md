# bspwm
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Pfeffimann18/bspwm)
![GitHub repo size](https://img.shields.io/github/repo-size/Pfeffimann18/bspwm)
![GitHub repo file count](https://img.shields.io/github/directory-file-count/Pfeffimann18/bspwm)
![GitHub](https://img.shields.io/github/license/Pfeffimann18/bspwm)

</br>


<p align="center">
  <img src="https://thumbs2.imgbox.com/b4/aa/iKa742Dt_t.png" width="900px">
</p>

## Installation of the needed packages
```bash
yay -S xf86-video-amd xorg xorg-xinit bspwm sxhkd nitrogen rofi picom alacritty firefox arandr ranger bashtop
```

## creating directorys
```bash
mkdir ~/.screenlayout
mkdir ~/.config/bspwm
mkdir ~/.config/sxhdk
mkdir ~/.config/polybar
mkdir ~/.config/ranger/
mkdir ~/.config/ranger/colorschemes
```

## copy the config-files
```bash
cp alacritty.yml ~/.config
cp default.py ~/.config/ranger/colorschemes
cp display.sh ~/.screenlayout
cp config.ini ~/.config/polybar
cp picom.conf ~/.config
cp .xinitrc ~
cp bspwmrc ~/.config/bspwm
cp sxhdkrc ~/.config/sxhdk
cp -r rofi ~/.config/
```