# SPDX-License-Identifier: GPL-3.0-only

# Source every .zsh inside aliases/
for f in "$ZDOTDIR"/aliases/*.zsh; do
	source "$f"
done
