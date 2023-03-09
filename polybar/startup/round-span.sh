#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar 

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c /home/sean/.config/polybar/config.d/round.polybar span &> /tmp/polybar.log & 
MONITOR=DP-0 polybar -c /home/sean/.config/polybar/config.d/round.polybar span &> /tmp/polybar.log & 

