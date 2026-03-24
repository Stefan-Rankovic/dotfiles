#!/bin/env bash
# SPDX-License-Identifier: GPL-3.0-only

if [ -n "$AUR_HELPER" ]; then
	INSTALLER="$AUR_HELPER"
else
	INSTALLER="sudo pacman"
fi

PROGRAMS=(
	"zsh"
	"kitty"
	"hyprland"
	"hyprpaper"
	"hyprpicker"
	"hyprlock"
	"snappy-switcher"
	"btop"
	"rofimoji"
	"swaync"

	"stow"
)

for program in "${PROGRAMS[@]}"; do
	echo "Installing $program..."
	$INSTALLER -S $program
	echo -e -n "\n\n\n"
done

