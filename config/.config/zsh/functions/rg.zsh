# SPDX-License-Identifier: GPL-3.0-only

rg() {
	brg \
		--hidden --no-ignore \
		--glob '!/.Trash-0/*' \
		--glob '!/home/.Trash-0/*' \
		"$@"
} # [R]ip [G]rep

