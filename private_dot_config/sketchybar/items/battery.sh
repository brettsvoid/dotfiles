#!/usr/bin/env sh

battery=(
  update_freq=120
  padding_left=8
  padding_right=2
  script="$PLUGIN_DIR/battery.sh"
)

sketchybar --add item battery right \
		   --set battery "${battery[@]}" \
		   --subscribe battery system_woke power_source_change
