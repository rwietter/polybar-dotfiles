#!/usr/bin/env sh

# Terminate already running instances of the bar
kill -9 -$(ps -o pgid -p $(cat ~/.config/polybar/scripts/arch_updates.pid) | tail -n1 | sed 's/^[ \t]*//;s/[ \t]*$//')
kill -9 $(cat ~/.config/polybar/scripts/polybar_updates.pid)

killall -q polybar

# Wait for the processes to shut down
while pgrep -x polybar > /dev/null; do sleep 1; done


# Launch the bar
# polybar top -q &

# Launch polybar
polybar top -c $(dirname $0)/top.ini &
polybar bottom -c $(dirname $0)/bottom.ini &

arch_updates & echo $! > ~/.config/polybar/scripts/arch/arch_updates.pid
notify-send "Launched the main bar ..."
