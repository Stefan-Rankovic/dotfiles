#!/bin/env zsh
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
TO_INSTALL=()

for program in "${PROGRAMS[@]}"; do
	if pacman -Q "$program" &>/dev/null; then
		print -P "%B%F{yellow}[SKIPPING]%f $program (already installed)%b"
	else
		print -P "%B%F{green}[QUEUING]%f $program%b"
		TO_INSTALL+=("$program")
	fi
done

if (( ${#TO_INSTALL[@]} > 0 )); then
	if ! "$INSTALLER" -S "${TO_INSTALL[@]}"; then
		print -P "%B%F{red}[ERROR]%f Installation failed!%b"
		exit 1
	fi
    print -P "%B%F{cyan}[DONE]%f Installation finished!%b"
else
    print -P "%B%F{cyan}[DONE]%f Nothing to install!%b"
fi

