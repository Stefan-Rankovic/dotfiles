#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

WAL_LOCATION="${PYWAL_CACHE_DIR:-${XDG_CACHE_HOME:?}/wal}"

if [[ ! -f "$WAL_LOCATION/colors" ]]; then
    print -P "%B%F{red}[ERROR]%f wal has not been run yet! Run wal first, then re-run this script.%b"
    exit 1
fi



echo "Symlinking wal colors..."
symlinked_some_wal_colors=0

WAYBAR_CSS="$HOME/.config/waybar/colors-waybar.css"
if [[ -L "$WAYBAR_CSS" ]]; then
	print -P "%B%F{yellow}[SKIPPING]%f colors-waybar.css (already exists as symlink)%b"
elif [[ -f "$WAYBAR_CSS" ]]; then
	print -P "%B%F{red}[ERROR]%f colors-waybar.css (already exists as file; please remove it)%b"
else
    ln -s "$WAL_LOCATION/colors-waybar.css" "$HOME/.config/waybar/colors-waybar.css"
    print -P "%B%F{green}[SYMLINKED]%f colors-waybar.css.%b"
	symlinked_some_wal_colors=1
fi

if [[ $symlinked_some_wal_colors == 1 ]]; then
	print -P "%B%F{cyan}[DONE]%f%b"
else
	print -P "%B%F{cyan}[DONE]%f (did nothing)%b"
fi

