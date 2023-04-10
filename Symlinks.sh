# BSPWM
rm ~/.config/bspwm/*
ln -s ~/GitHub/bspwm/bspwmrc ~/.config/bspwm/bspwmrc

# SXHKD
rm ~/.config/sxhkd/*
ln -s ~/GitHub//bspwm/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc

# Polybar
rm -r ~/.config/polybar
ln -s ~/GitHub/bspwm/polybar ~/.config/

# Dmenu
ln -s ~/GitHub/bspwm/scripts/dmenu/ ~/.config/scripts/

# Kitty
ln -s ~/GitHub/bspwm/kitty-bspwm ~/.config/kitty/kitty.conf

ln -s ~/GitHub/bspwm/picom.conf ~/.config/

ln -s ~/GitHub/bspwm/conky.conf ~/.config/