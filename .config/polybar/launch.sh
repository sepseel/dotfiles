#!/usr/bin/env sh

#terminate running instances
killall -q polybar

#wait for them to be killed 
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#launch bar 
polybar -r -c ~/.config/polybar/config.ini molokai &
