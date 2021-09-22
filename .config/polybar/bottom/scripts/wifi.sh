!#/bin/bash
# sudo netctl start wlp2s0-AndroidAP
label = $(nmcli device | grep wifi)

nmcli device wifi connect label
