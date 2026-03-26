#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

echo "Creating other files..."
did_something=0

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Relative to repo root
FILES=(
	"config/.config/hypr/hyprpaper.conf"
	"config/.config/hypr/startup.conf"

	"config/.config/zsh/.zsh_history"
	"config/.config/zsh/.zshenv"
)

for file in "${FILES[@]}"; do
	if [[ -f "$file" ]]; then
		print -P "%B%F{yellow}[SKIPPING]%f $file (already exists)%b"
	else
		touch "$DOTFILES_DIR/$file"
		did_something=1
		print -P "%B%F{green}[CREATED]%f $file%b"
	fi
done

if [[ $did_something == 1 ]]; then
	print -P "%B%F{cyan}[DONE]%f%b\n"
else
	print -P "%B%F{cyan}[DONE]%f (did nothing)%b\n"
fi

