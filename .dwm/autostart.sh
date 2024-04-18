#!/bin/bash

killall dwmblocks; dwmblocks &
pgrep -x sxhkd > /dev/null || sxhkd &
# nitrogen --restore &
picom --config ~/.config/picom.conf & 
xss-lock --transfer-sleep-lock -- i3lock -i ~/Pictures/wall/3.png --nofork &
xidlehook --not-when-audio --timer 600 'systemctl suspend' '' &
xset s on &
xset s 600 &
xset -dpms &
greenclip daemon &
# xautolock -time 12 -locker "systemctl suspend" -detectsleep &
#exec ~/.config/polybar/launch.sh &
#mpd-notification & 
xinput --set-prop "12" "libinput Accel Speed" -0.6 &
# xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Accel Speed' -0.2 &
