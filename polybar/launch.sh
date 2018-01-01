#!/usr/bin/env sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 0.1; done

polybar --config=$HOME/.dotfiles/polybar/config.ini status &
