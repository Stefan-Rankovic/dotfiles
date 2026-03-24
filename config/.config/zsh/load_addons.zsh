# SPDX-License-Identifier: GPL-3.0-only

# Source every .zsh inside addons/
for f in "$ZDOTDIR"/addons/*.zsh; do
	source "$f"
done
