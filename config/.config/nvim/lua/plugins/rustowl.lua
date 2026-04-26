-- SPDX-License-Identifier: GPL-3.0-only
--
-- Helps with lifetimes in .rs files.
--
-- https://github.com/cordx56/rustowl

return {
	enabled = false, -- It doesn't work for Rust 1.88 as of the time I'm writing this
	"cordx56/rustowl",
	-- I haven't tested whether this build works.
	build = "rustowl toolchain uninstall && rustowl toolchain install",
	lazy = false,
	opts = {
		client = {
			cmd = { "rustowl" }, -- Because it is installed through the AUR
		},
	},
}
