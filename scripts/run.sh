#!/bin/sh

# Define function to run processes
run() {
    if ! pgrep --full "$1" >/dev/null; then
        "$@" &
    fi
}

# start bar
run ~/.config/sweetdwm/scripts/bar.sh

run picom

# Set wallpaper and pywal
xargs xwallpaper --stretch <~/.config/wall &

xset r rate 200 50 &
xrdb -load ~/.config/X11/xresources & # Load .Xresources settings for urxvt terminals
xrdb -load ~/.Xresources  &           # Load .Xresources settings for urxvt terminals
xsetroot -cursor_name left_ptr &      # Change X shaped default cursor

while chadwm && type chadwm >/dev/null; do :; done
