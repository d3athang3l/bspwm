# BSPWM
rm ~/.config/bspwm/*
ln -s ~/GitHub/bspwm/bspwmrc ~/.config/bspwm/bspwmrc

# SXHKD
rm ~/.config/sxhkd/*
ln -s ~/GitHub//bspwm/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc

# Polybar
rm -r ~/.config/polybar
ln -s ~/GitHub/bspwm/polybar ~/.config/polybar

# Dmenu
ln -s ~/GitHub/bspwm/scripts/dmenu/ ~/.config/scripts/