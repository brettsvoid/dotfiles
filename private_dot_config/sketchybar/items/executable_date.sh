#!/usr/bin/env sh

date=(
  icon=$ICON_CALENDAR
  padding_right=2
  padding_left=8
  update_freq=60
  script="$PLUGIN_DIR/date.sh"
)

sketchybar --add item date right \
  --set date "${date[@]}"
