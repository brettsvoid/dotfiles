#!/usr/bin/env sh

POPUP_OFF='sketchybar --set apple.logo popup.drawing=off'
POPUP_CLICK_SCRIPT='sketchybar --set $NAME popup.drawing=toggle'

apple_logo=(
    icon=$APPLE
    icon.font="$FONT:Black:20.0"
    label.drawing=off
    popup.height=35
	y_offset=2
    click_script="$POPUP_CLICK_SCRIPT"
)

apple_prefs=(
    icon=$PREFERENCES
    label="Preferences"
    click_script="open -a 'System Preferences'; $POPUP_OFF"
)

apple_activity=(
    icon=$ACTIVITY
    label="Activity"
    click_script="open -a 'Activity Monitor'; $POPUP_OFF"
)

apple_lock=(
    icon=$LOCK
    label="Lock Screen"
    click_script="pmset displaysleepnow; $POPUP_OFF"
)

# apple_bluetooth=(
#     icon=$BLUETOOTH
#     label="BT Restart"
#     click_script="open btt://execute_assigned_actions_for_trigger/?uuid=A85489BC-14EE-4332-9985-EF0C39F97389; $POPUP_OFF"
# )

# apple_restart=(
#     icon=$RESTART
#     label="Restart"
#     click_script="~/github/dotfiles-latest/scripts/macos/mac/220-restartConfirm.sh; $POPUP_OFF"
# )

sketchybar --add item apple.logo left \
    --set apple.logo "${apple_logo[@]}"
sketchybar --add item apple.prefs popup.apple.logo \
    --set apple.prefs "${apple_prefs[@]}"
sketchybar --add item apple.activity popup.apple.logo \
    --set apple.activity "${apple_activity[@]}"
sketchybar --add item apple.lock popup.apple.logo \
    --set apple.lock "${apple_lock[@]}"
# sketchybar --add item apple.bluetooth popup.apple.logo \
#     --set apple.bluetooth "${apple_bluetooth[@]}"
# TODO: add restart script
# sketchybar --add item apple.restart popup.apple.logo \
#     --set apple.restart "${apple_restart[@]}"
