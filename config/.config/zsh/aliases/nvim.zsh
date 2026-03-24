# SPDX-License-Identifier: GPL-3.0-only

alias n="nvim" # [N]vim

alias sn="s nvim" # [S]udo-rs [N]vim

nz() {
    [[ -z "$ZDOTDIR" ]] && { echo "ZDOTDIR not set"; return 1; }
    n "$ZDOTDIR/$@"
} # [N]vim [Z]sh

nx() {
    n "$@"
    chmod +x "$@"
} # [N]vim e[X]ecutable
