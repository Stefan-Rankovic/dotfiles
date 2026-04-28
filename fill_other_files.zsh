#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

print -P "%BFilling other files with default content...%b"
print -P "%B{green}NOTE: If you are running this script for the first time, you should probably look at and modify all of these files (except if the README says otherwise, such as for hyprpaper.conf). If it is not your first time, and you are running this script to update, you should still check if there is anything new you might want to add. The changes you made to a file might not overlap with the new things added."
did_something=0

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Relative to repo root
typeset -A files

files[$DOTFILES_DIR/config/.config/hypr/hyprpaper.conf]="$(cat $DOTFILES_DIR/default_file_contents/config_config_hypr_hyprpaper.conf)"

files[$DOTFILES_DIR/config/.config/hypr/startup.conf]="$(cat $DOTFILES_DIR/default_file_contents/config_config_hypr_startup.conf)"


files[$DOTFILES_DIR/config/.config/zsh/functions/wal.zsh]="$(cat $DOTFILES_DIR/default_file_contents/config_config_zsh_functions_wal.zsh)"

files[$DOTFILES_DIR/config/.config/zsh/personal.zshenv]="$(cat $DOTFILES_DIR/default_file_contents/config_config_zsh_personal.zshenv)"


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
	print -P "%B%F{cyan}[DONE]%f%b (did nothing)\n"
fi

