#!/usr/bin/env sh

disk=(
  icon=$ICON_DISK
  padding_right=2
  padding_left=8
  update_freq=60
  script="$PLUGIN_DIR/disk_space.sh"
)

sketchybar --add item disk right \
	   --set disk "${disk[@]}" \
	   --set disk click_script="open -a 'Disk Utility'"
