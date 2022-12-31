filename=~/.config/polybar/config.ini
if [ ! -f $filename ]; then
echo "Datei existiert nicht."
exit 1
fi
sed -i 's/%icon%/%name%/g' $filename
bspc wm -r