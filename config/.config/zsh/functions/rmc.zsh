# SPDX-License-Identifier: GPL-3.0-only

# [R]e[M]ove [C]ache
rmc() {
	echo "---------- System package manager ----------"
	prmc

	echo "---------- Cargo ----------"
	cargo cache -a
}
