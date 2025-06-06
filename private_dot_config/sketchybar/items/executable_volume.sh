#!/usr/bin/env sh


volume=(
  script="$PLUGIN_DIR/volume.sh"
  padding_left=2
  padding_right=2
  background.border_width=0
  background.height=24
)

status_bracket=(
  background.color=$BACKGROUND_1
  background.border_color=$BACKGROUND_2
)

sketchybar --add item volume right \
           --set volume "${volume[@]}" \
           --subscribe volume volume_change

sketchybar --add bracket status brew github.bell wifi volume \
           --set status "${status_bracket[@]}"
