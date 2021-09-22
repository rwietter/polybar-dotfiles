#!/bin/sh

disk=$(df -h / | awk 'NR==2 {total=$2; used=$3; print used "  /   "total}')
OS=$(uname -r)
pid=$(pgrep -x -u $USER $wm)
HOST=$(uname -n)
UPTIME=$(awk '{printf("%d:%02d:%02d:%02d",($1/60/60/24),($1/60/60%24),($1/60%60),($1%60))}' /proc/uptime)
PACKAGES=$(pacman -Q | wc -l)
de=$(wmctrl -m | grep -i name | awk '{print $2}')
charCount=$(echo ${#uptime})
cpu=$(lscpu | grep 'Model name' | awk -F ':' '{print $2}' | cut -c13-37)

FG='#E5E9F0'
BG='#1d2433'
fg_title="#5ccfe6"

font1="Fantasque Sans Mono:size=12"
font_title="Noto Sans:bold:size=11"
icons="FontAwesome:pixelsize=12;0"
icons2="Wuncon Siji:size=12;0"

(
  echo ""
  echo "(\ /)  $HOST"
  echo "(. .)  $UPTIME"
  echo "(\d)  $PACKAGES"
  echo "c("")("")  $OS"
  echo ""
) | dzen2 -p -x 1000 -y 300 -w 300 -bg $BG -fg $FG -l 10 -sa l -ta c -e 'onstart=uncollapse;button1=exit;button4=exit' -fn "Fantasque Sans Mono"
