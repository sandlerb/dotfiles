#!/bin/sh

# Screenshot the current screen
scrot /tmp/lock_scrot.png

# Pixelate it and make it gray
mogrify -scale 10% -scale 1000% /tmp/lock_scrot.png
convert /tmp/lock_scrot.png -colorspace Gray /tmp/lock_scrot_conv.png

# Lock it up
i3lock -i /tmp/lock_scrot_conv.png

# Turn the screen off after a delay
sleep 60; pgrep i3lock && xset dpms force off
