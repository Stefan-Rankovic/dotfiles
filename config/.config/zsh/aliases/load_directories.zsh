# SPDX-License-Identifier: GPL-3.0-only

# Source every .zsh inside directories/
for f in "$ZDOTDIR"/aliases/directories/*.zsh; do
	source "$f"
done
