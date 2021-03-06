#!/usr/bin/env bash

(wal -i "$(< "${HOME}/.cache/wal/wal")")

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar main

# set toggle variable
POLYBARON = 1

echo "Bars launched..."
