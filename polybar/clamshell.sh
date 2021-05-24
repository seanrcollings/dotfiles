#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar 

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c /home/sean/.config/polybar/config external1 &> /tmp/polybar.log & 
polybar -c /home/sean/.config/polybar/config external2 &> /tmp/polybar.log &
