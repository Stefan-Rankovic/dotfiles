# SPDX-License-Identifier: GPL-3.0-only

# [N]vim [Z]sh
nz() {
    [[ -z "$ZDOTDIR" ]] && { echo "ZDOTDIR not set"; return 1; }
    n "$ZDOTDIR/$@"
}

