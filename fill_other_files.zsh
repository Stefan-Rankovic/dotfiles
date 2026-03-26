#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

print -P "%BFilling other files with default content %F{green}(you may want to further modify these files)%f...%b"
did_something=0

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Relative to repo root
typeset -A files

files[$DOTFILES_DIR/config/.config/hypr/hyprpaper.conf]="$(cat $DOTFILES_DIR/default_file_contents/config_config_hypr_hyprpaper.conf)"

files[$DOTFILES_DIR/config/.config/hypr/startup.conf]="$(cat $DOTFILES_DIR/default_file_contents/config_config_hypr_startup.conf)"


files[$DOTFILES_DIR/config/.config/zsh/.zshenv]="$(cat $DOTFILES_DIR/default_file_contents/config_config_zsh_.zshenv)"



for path contents in "${(@kv)files}"; do
	# Files should've been created by create_other_files.zsh.
	if [[ ! -f "$path" ]]; then
		print -P "%B%F{red}[ERROR]%f $path (doesn't exist)%b"
	elif [[ ! -s "$path" ]]; then
		did_something=1
		print -r -- "$contents" > "$path"
		print -P "%B%F{green}[FILLED]%f $path%b"
	else
		print -P "%B%F{yellow}[SKIPPING]%f $path (not empty)%b"
	fi
done

if [[ $did_something == 1 ]]; then
	print -P "%B%F{cyan}[DONE]%f%b\n"
else
	print -P "%B%F{cyan}[DONE] (did nothing) %f%b\n"
fi

