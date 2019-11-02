#!/bin/sh

folder_main="/DriveE/Pictures/Wallpapers/Collection"

# List all wallpaper folders, show in rofi and get selected folder
folder_collection=`find $folder_main -type d -printf '%d\t%P\n' | cut -f2- | tail -n +2 | rofi -dmenu -i -l 25`

# Get full folder path
folder_collection_fullpath=`find $folder_main -name "$folder_collection" -print -quit`

# Select random wallpaper from that folder
file=`find $folder_collection_fullpath |shuf -n1`

# Set wallpaper and color
convert $file -fill black -colorize 50% /tmp/wal1.jpg
convert /tmp/wal1.jpg -fill black -colorize 50% /tmp/wal2.jpg
feh --bg-fill /tmp/wal2.jpg
feh --bg-fill /tmp/wal1.jpg
wal -i $file; /home/lanaya/Documents/Script/reloadDunst.sh
