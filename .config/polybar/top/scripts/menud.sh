#!/bin/sh
terminal='urxvt -e'
menu_list="FILE\\nNET\nMUSIC\n---------------------------------\nLOGOUT\nREBOOT\nSHUTDOWN"

Dmenu="dmenu -p '' -i -b -h 24 -l 20 -w 150 -dim 0.0 -x 370 -y 320 -i -fn 'Roboto Thin-11' -nb '#1D2426' -sb '#b30059' -nf '#FFFFFF' -sf '#FFFFFF'"

asuh=$(echo -e "$menu_list" | eval $Dmenu)



case $asuh in
  *FILE)
    thunar ;;
  *NET)
    opera ;;
  *MUSIC)
    $terminal ncmpcpp ;; 
   *LOGOUTt | ";"i | i";") 
    pkill i3 & ;;
   *REBOOT)
   shutdown -r now & ;;
  *SHUTDOWN)
   shutdown -h now & ;;

esac
