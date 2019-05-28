#!/usr/bin/env bash

export XAUTHORITY=/home/lanaya/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

light -S 100
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | grep -e "100%" > /dev/null
if [ $? == 0 ];then echo
    echo success
    notify-send -i $HOME/Documents/icons/icons8-full-battery-40.png 'Battery Full'
else
    # echo fail
    # /usr/bin/sudo -u lanaya /usr/bin/paplay --server /run/user/1000/pulse/native /home/lanaya/.i3/sounds/Click1.wav > /dev/null 2>&1
    # notify-send -i $HOME/Documents/icons/icons8-charging-battery-40.png 'Battery charger connected OR Battery Full'
    notify-send -i $HOME/Documents/icons/icons8-charging-battery-40.png 'Battery charger connected'
fi
exec pkill -RTMIN+16 i3blocks 

