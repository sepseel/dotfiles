#!/bin/bash

#terminate running instances
killall -q polybar

#wait for them to be killed 
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#launch bar 
#polybar -c ~/.config/polybar/config.ini molokai &

# multi  monitor launch
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    TEXT=hello MONITOR=$m polybar -c ~/.config/polybar/config.ini --reload top &
  done
else
  polybar --reload top &
fi
