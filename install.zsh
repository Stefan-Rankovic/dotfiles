#!/bin/env zsh
# SPDX-License-Identifier: GPL-3.0-only

./deps.zsh

RESET="\e[0m"
BLUE="\e[34m"
MAGENTA="\e[35m"
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Repository setup
ln -sf "$DOTFILES_DIR/hooks/pre-commit" "$DOTFILES_DIR/.git/hooks/pre-commit"

# Zshenv
ZSHENV="$HOME/.zshenv"
LOCAL_ZSHENV="$DOTFILES_DIR/zshenv"
# If it's a symlink that points to $LOCAL_ZSHENV, do nothing
if [[ -L "$ZSHENV" && "$(readlink -f "$ZSHENV")" == "$LOCAL_ZSHENV" ]]; then
    # Already set up correctly
elif [[ -f "$ZSHENV" ]]; then
    mv "$ZSHENV" "$ZSHENV.bak"
    print -P "%B%F{red}Warning: $ZSHENV already existed and has been backed up to $ZSHENV.bak%f%b"
fi
ln -sf "$LOCAL_ZSHENV" "$ZSHENV"

echo "Linking configs..."
stow --restow config
echo "Done."

echo "Creating other files..."
./create_other_files.zsh
echo "Done."

echo "Filling other files with default content (you may want to further modify these files)..."
./fill_other_files.zsh
echo "Done."

