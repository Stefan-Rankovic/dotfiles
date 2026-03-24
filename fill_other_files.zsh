#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Relative to repo root
typeset -A files



files[$DOTFILES_DIR/config/.config/hypr/hyprpaper.conf]="$(cat $DOTFILES_DIR/default_file_contents/config_config_hypr_hyprpaper.conf)"

files[$DOTFILES_DIR/config/.config/hypr/startup.conf]="$(cat $DOTFILES_DIR/default_file_contents/config_config_hypr_startup.conf)"


files[$DOTFILES_DIR/config/.config/zsh/.zshenv]="$(cat $DOTFILES_DIR/default_file_contents/config_config_zsh_.zshenv)"



for path contents in "${(@kv)files}"; do
	if [[ ! -f "$path" ]]; then
		print -P "%B%F{red}$path doesn't exist%f%b"
	elif [[ ! -s "$path" ]]; then
		print -r -- "$contents" > "$path"
		print -P "%B%F{green}$path has been filled%f%b"
	else
		print -P "%B%F{red}$path is not empty%f%b"
	fi
done

