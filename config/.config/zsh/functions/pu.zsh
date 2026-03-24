# SPDX-License-Identifier: GPL-3.0-only

# [P]ackage [U]pdate
pu() {

	echo "---------- Programs ----------"

	echo "- Pkgfile..."
	s pkgfile --update

	echo "- System..."
	pm -Syu # System packages

	echo "- Flatpak..."
	flatpak update # Flatpak packages



	echo "---------- Rust ----------"

	echo "- Official"
	rustup update # Official Rust things; clippy, rustfmt, rust itself, etc.

	echo "- Not official"
	cargo install-update -a # Non-official Rust addons



	echo "---------- JavaScript ----------"

	echo "- Packages"
	command -v pnpm &> /dev/null && pnpm self-update # JavaScript packages



	echo "---------- Zinit ----------"
	# First, source it
	source "$ZDOTDIR"/addons/zinit.zsh

	echo "- Core"
	zini self-update

	echo "- Plugins"
	zini update --parallel



	echo "---------- Yazi ----------"

	echo "- Plugins"
	ya pkg upgrade
}

