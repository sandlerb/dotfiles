#!/bin/sh

scrot /tmp/lock_scrot.png
convert /tmp/lock_scrot.png -blur 3x3 -colorspace Gray /tmp/lock_scrot_conv.png
i3lock -i /tmp/lock_scrot_conv.png
