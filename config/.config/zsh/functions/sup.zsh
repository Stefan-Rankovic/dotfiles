# SPDX-License-Identifier: GPL-3.0-only

# [S]ystem [UP]date
# Note: it's `sup` instead of `su` because `su` is taken
sup() {

	echo "---------- Programs ----------"

	echo "- Pkgfile..."
	please pkgfile --update

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

	echo "- Package manager"
	pnpm self-update

	echo "- Packages"
	pnpm update -g



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

	echo "---------- Nvim ----------"


	echo "- Plugins"
	nvim --headless "+Lazy! sync" +qa 2>&1

	echo "- Treesitter"
	nvim --headless "+TSUpdateSync" +qa 2>&1
}

