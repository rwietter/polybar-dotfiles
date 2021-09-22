#!/bin/bash

TODAY=$(expr `date +'%d'` + 0)

(
echo "^fg(#D8DEE9)^fn(misc:pixelsize=16:antialias=true:hinting=false)"; echo
\
cal | sed -re "s/^(.*[A-Za-z][A-Za-z]*.*)$/^fg(#D91C64)^bg(#1d2433)\1/;s/(^|[ ])($TODAY)($|[ ])/\1^bg(#ECEFF4)^fg(#D91C64)\2^fg(#ECEFF4)^bg(#D91C64)\3/"
sleep 8
) | dzen2 -fg '#D8DEE9' -bg '#1d2433' -fn 'fantasque sans mono:pixelsize=15:antialias=true:hinting=true' -x 1160 -y 710 -w 200 -l 10 -h 20 -sa c -e 'onstart=uncollapse;button1=exit;button4=exit'
