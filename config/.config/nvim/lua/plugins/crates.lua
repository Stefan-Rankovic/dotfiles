-- SPDX-License-Identifier: GPL-3.0-only

-- Shows the version number of packages in Cargo.toml. And other generally useful things that make editing Cargo.toml easier.
--
-- https://github.com/Saecki/crates.nvim

return {
	"saecki/crates.nvim",
	event = { "BufRead Cargo.toml" },
	config = function()
		require("crates").setup({
			completion = {
				cmp = {
					enabled = true,
				},
				crates = {
					enabled = true,
					max_results = 8,
					min_chars = 2,
				},
			},
			lsp = {
				enabled = true,
			},
		})
	end,
}
