# SPDX-License-Identifier: GPL-3.0-only

brg() {
	command rg \
		--hidden --no-ignore \
		--glob '!/proc/*' \
		--glob '!/sys/*' \
		--glob '!/dev/*' \
		--glob '!/run/*' \
		--glob '!/@swap/*' \
		--glob '!/mnt/*' \
		--glob '!/home/.snapshots/*' \
		--glob '!/.snapshots/*' \
		"$@"
} # [B]ase [R]ip [G]rep (not rgb() unlike the usual "function [B]ase" name as RGB already exists as a term)

