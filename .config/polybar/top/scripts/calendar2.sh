#!/bin/bash

TODAY=$(expr `date +'%d'` + 0)

(
echo "^fg(#D8DEE9)^fn(misc:pixelsize=16:antialias=true:hinting=false)"; echo
\
cal | sed -re "s/^(.*[A-Za-z][A-Za-z]*.*)$/^fg(#E5387B)^bg(#0A0A0A)\1/;s/(^|[ ])($TODAY)($|[ ])/\1^bg(#ECEFF4)^fg(#E5387B)\2^fg(#ECEFF4)^bg(#E5387B)\3/"
sleep 8
) | dzen2 -fg '#D8DEE9' -bg '#0A0A0A' -fn 'fantasque sans mono:pixelsize=15:antialias=true:hinting=true' -x 1050 -y 30 -w 200 -l 10 -h 20 -sa c -e 'onstart=uncollapse;button1=exit;button4=exit'
