# SPDX-License-Identifier: GPL-3.0-only

# [S]udo-rs [P]ackage [M]anager
spm() {
	[[ -z "$AUR_HELPER" ]] && { echo "AUR helper not set"; return 1; }
	s "$AUR_HELPER" "$@"
}

