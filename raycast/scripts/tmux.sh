#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title tmux
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🧑‍💻
# @raycast.argument1 { "type": "text", "placeholder": "Session name" }

# Documentation:
# @raycast.description open tmux

tmux new-session -d -s $1

osascript -e '
  on run argv
    tell app "Terminal"
      do script "tmux a -t " & argv
    end tell
  end run
' -- "$1"