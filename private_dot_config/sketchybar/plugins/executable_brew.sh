#!/usr/bin/env sh

source "$HOME/.config/colors.sh"

COUNT="$(brew outdated | wc -l | tr -d ' ')"

COLOR=$COLOR_RED

case "$COUNT" in
[3-5][0-9])
  COLOR=$COLOR_ORANGE
  ;;
[1-2][0-9])
  COLOR=$COLOR_YELLOW
  ;;
[1-9])
  COLOR=$COLOR_WHITE
  ;;
0)
  COLOR=$COLOR_GREEN
  COUNT=✔︎
  ;;
esac


sketchybar -m --set $NAME label=$COUNT icon.color=$COLOR
