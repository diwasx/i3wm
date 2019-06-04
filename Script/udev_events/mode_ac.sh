#!/usr/bin/bash

export XAUTHORITY=/home/lanaya/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

light -S 100
exec pkill -RTMIN+16 i3blocks 
# /usr/bin/sudo -u lanaya /usr/bin/paplay --server /run/user/1000/pulse/native /home/lanaya/.i3/sounds/Click1.wav > /dev/null 2>&1
# notify-send -i $HOME/Documents/icons/icons8-charging-battery-40.png 'Battery charger connected OR Battery Full'

# notify-send -i /home/lanaya/Documents/icons/icons8-charging-battery-40.png 'Battery charger connected'
notify-send 'Battery charger connected'
