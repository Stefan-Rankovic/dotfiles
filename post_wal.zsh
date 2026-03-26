#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

WAL_LOCATION="${PYWAL_CACHE_DIR:-${XDG_CACHE_HOME:?}/wal}"

if [[ ! -f "$WAL_LOCATION/colors" ]]; then
    print -P "%B%F{red}[ERROR]%f wal has not been run yet! Run wal first, then re-run this script.%b"
    exit 1
fi

echo "Linking wal colors..."
WAYBAR_CSS="$HOME/.config/waybar/colors-waybar.css"
if [[ -L "$WAYBAR_CSS" ]]; then
    print -P "%B%F{yellow}[SKIPPING]%f colors-waybar.css symlink already exists.%b"
elif [[ -f "$WAYBAR_CSS" ]]; then
    print -P "%B%F{yellow}[ERROR]%f $WAYBAR_CSS already exists as a regular file. Please remove it.%b"
else
    ln -s "$WAL_LOCATION/colors-waybar.css" "$HOME/.config/waybar/colors-waybar.css"
    print -P "%B%F{green}[DONE]%f Symlink created.%b"
fi
echo "Done."

