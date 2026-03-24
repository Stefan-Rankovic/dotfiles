# SPDX-License-Identifier: GPL-3.0-only

# Source every .zsh inside functions/
for f in "$ZDOTDIR"/functions/*.zsh; do
	source "$f"
done

