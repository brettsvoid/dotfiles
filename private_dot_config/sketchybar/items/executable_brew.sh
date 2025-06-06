#!/usr/bin/env sh

brew=(
  icon=󰏗
  label=
  # Set update frequency to 30 min (30*60=1800)
  update_freq=1800
  padding_right=8
  label.padding_left=2
  script="$PLUGIN_DIR/brew.sh"
)

sketchybar --add item brew right \
  --set brew "${brew[@]}"
  --subscribe brew brew_update
