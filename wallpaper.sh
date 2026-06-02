#!/bin/bash

WALL_DIR=""
THUMB_DIR="$HOME/.cache/Wallpapers"
THEME="./wallpaper.rasi"

for img in "$WALL_DIR"/*;do
	[ -f "$img" ] || continue
	
	name=$(basename "$img")
	thumb="$THUMB_DIR/$name"

	if [ ! -f "$thumb" ] || [ "$img" -nt "$thumb" ];then
		echo "Generating thumbnail for $name"
		convert "$img" -resize 256x256^ -gravity center -extent 256x256 "$thumb"
	fi
done

selected=$(
for img in "$WALL_DIR"/*;do 
	name=$(basename "$img")
	thumb="$THUMB_DIR/$name"
	
	printf "%s\0icon\x1f%s\n" "$name" "$thumb"
done | rofi -dmenu -theme "$THEME" -show-icons -p "") 

[ -z "$selected"] && exit

awww img "$WALL_DIR/$selected" \
	--transition-type wipe \
	--transition-duration 1
ln -sf "$WALL_DIR/$selected" "$HOME/.current_wallpaper"
