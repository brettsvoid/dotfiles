#!/usr/bin/env sh

source "$CONFIG_DIR/colors.sh"

brew update &> /dev/null

COUNT="$(brew outdated | wc -l | tr -d ' ')"

COLOR=$RED

case "$COUNT" in
[3-5][0-9])
  COLOR=$ORANGE
  ;;
[1-2][0-9])
  COLOR=$YELLOW
  ;;
[1-9])
  COLOR=$WHITE
  ;;
0)
  COLOR=$GREEN
  COUNT=✔︎
  ;;
esac

sketchybar -m --set $NAME label=$COUNT icon.color=$COLOR
