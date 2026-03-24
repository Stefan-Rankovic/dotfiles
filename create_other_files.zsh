#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

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
		print -P "%B%F{red}$file already exists%f%b"
	else
		touch "$DOTFILES_DIR/$file"
		print -P "%B%F{green}$file has been created%f%b"
	fi
done

