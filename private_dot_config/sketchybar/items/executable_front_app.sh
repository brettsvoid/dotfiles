#!/usr/bin/env sh

front_app=(
  label.padding_left=4
  label.padding_right=10
  label.font="$FONT:Bold:14.0"
  icon.background.drawing=on
  display=active
  script="$PLUGIN_DIR/front_app.sh"
  click_script="open -a 'Mission Control'"
)

sketchybar --add item front_app left \
  --set front_app "${front_app[@]}" \
  --subscribe front_app front_app_switched
