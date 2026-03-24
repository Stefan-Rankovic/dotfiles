# SPDX-License-Identifier: GPL-3.0-only

# [P]ackage [M]anager
pm() {
	[[ -z "$AUR_HELPER" ]] && { echo "AUR helper not set"; return 1; }
	"$AUR_HELPER" "$@"
}

