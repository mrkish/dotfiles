#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the procecsses have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
# echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2log
# polybar bar1 >> /tmp/polybar1.log 2>&1 &
# polybar bar2 >> /tmp/polybar2.log 2>&1 &
# polybar -c ~/.config/polybar/config.ini main &
if type "xrandr"; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar -c ~/.config/polybar/config.ini main &
  done
else
  polybar --reload main &
fi
# echo "Bars launched..."