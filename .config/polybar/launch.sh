#!/usr/bin/env sh

killall -q polybar

# Wait for the processes to shut down
while pgrep -x polybar > /dev/null; do sleep 1; done

# Launch the bar
# polybar top -q &

# Launch polybar
# polybar top -c $(dirname $0)/top.ini &
polybar top -c $(dirname $0)/top/top.ini &
polybar bottom -c $(dirname $0)/bottom/bottom.ini &

arch_updates & echo $! > ~/.config/polybar/scripts/arch/arch_updates.pid
notify-send "Launched the main bar ..."
