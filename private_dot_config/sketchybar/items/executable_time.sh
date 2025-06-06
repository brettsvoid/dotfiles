#!/usr/bin/env sh

time=(
  icon=$ICON_CLOCK
  padding_right=8
  padding_left=2
  update_freq=10
  script="$PLUGIN_DIR/time.sh"
)

sketchybar --add item time right \
	   --set time "${time[@]}"
