#!/usr/bin/env bash

# Activated fron udev rule at /etc/udev/rules.d/
export XAUTHORITY=/home/lanaya/.Xauthority
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

#Command
light -S 70

#Sound
# /usr/bin/sudo -u lanaya /usr/bin/paplay --server /run/user/1000/pulse/native /home/lanaya/.i3/sounds/Click1.wav > /dev/null 2>&1

#Notify
/usr/bin/notify-send -i $HOME/Documents/icons/icons8-battery-level-40.png 'Battery charger disconnected'
exec pkill -RTMIN+16 i3blocks 
