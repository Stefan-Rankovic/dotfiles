# SPDX-License-Identifier: GPL-3.0-only

fb() {
	fd --hidden --no-ignore \
		--exclude /mnt/ \
		--exclude /home/.snapshots/ \
		--exclude /.snapshots/ \
		"$@"
} # [F]ind [B]ase

