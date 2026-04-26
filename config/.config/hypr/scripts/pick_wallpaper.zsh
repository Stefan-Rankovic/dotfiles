#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

set -euo pipefail

WALLPAPERS_DIR="${HOME}/.config/hypr/wallpapers"
SCRIPTS_DIR="${0:A:h}"

selected=$(yazi --chooser-file=/dev/stdout "$WALLPAPERS_DIR")

echo "Selected $selected"

# Nothing selected -> exit silently
if [[ -z "$selected" ]]; then
	exit 0
fi

# Selection outside $WALLPAPERS_DIR -> exit with error
if [[ "$selected" != "$WALLPAPERS_DIR"* ]]; then
	notify-send -a "Wallpaper Picker" "Error" "Invalid wallpaper selection: not in wallpapers/ directory."
	exit 1
fi

# Valid selection -> change wallpaper
"$SCRIPTS_DIR/change_wallpaper.zsh" "$selected"

