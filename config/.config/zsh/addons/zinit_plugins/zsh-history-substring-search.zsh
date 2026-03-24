# SPDX-License-Identifier: GPL-3.0-only

# Press up/down keys while typing a command to cycle through the history.

zinit ice lucid wait"1" \
    atload"bindkey '^[[A' history-substring-search-up; bindkey '^[[B' history-substring-search-down"
zinit light zsh-users/zsh-history-substring-search

