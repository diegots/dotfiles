NAME="My_Config"
OUTPUT=VGA1

First we run gtf or cvt to get the Modeline for the resolution we want:
cvt 1600 900

xrandr --newmode "$NAME" 118.25  1600 1696 1856 2112  900 903 908 934 -hsync +vsync
xrandr --addmode "$OUTPUT" "$NAME"
xrandr --output "$OUTPUT" --mode "$NAME"