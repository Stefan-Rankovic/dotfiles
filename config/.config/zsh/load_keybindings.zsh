# SPDX-License-Identifier: GPL-3.0-only

# Source every .zsh inside keybindings/
for f in "$ZDOTDIR"/keybindings/*.zsh; do
	source "$f"
done
