#!/bin/bash
# SPDX-License-Identifier: GPL-3.0-only

ignore_tiling_two_arguments=0
for arg in "$@"; do
	if [[ "$arg" == "--ignore-tiling-two-arguments" || "$arg" == "-itta" ]]; then
		ignore_tiling_two_arguments=1
	fi
done

if hyprctl activewindow -j | jq -e '.floating' | grep -q true; then
	hyprctl dispatch moveactive $1 $2
	hyprctl dispatch resizeactive $((-$1)) $((-$2))
else
	if [[ $ignore_tiling_two_arguments == 0 && $1 != 0 && $2 != 0 ]]; then
		notify-send -a "$0" "Error: called $0 with the active window being tiled and both arguments non-zero. This is not supported due to potential unwanted behaviour with windows other than the selected window getting resized."
	elif [[ $1 != 0 ]]; then
		original=$(hyprctl activewindow -j | jq -r '.address')
		hyprctl dispatch movefocus l
		hyprctl dispatch resizeactive $((-$1)) 0
		hyprctl dispatch focuswindow "address:$original"
	elif [[ $2 != 0 ]]; then
		original=$(hyprctl activewindow -j | jq -r '.address')
		hyprctl dispatch movefocus u
		hyprctl dispatch resizeactive 0 $((-$2))
		hyprctl dispatch focuswindow "address:$original"
	fi
fi
