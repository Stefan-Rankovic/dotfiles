-- SPDX-License-Identifier: GPL-3.0-only

-- Shows error in-line.
--
-- https://github.com/rachartier/tiny-inline-diagnostic.nvim

return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "VeryLazy",
	priority = 1000,
	config = function()
		require("tiny-inline-diagnostic").setup({
			transparent_bg = true,
			options = {
				show_source = {
					enabled = true,
				},
				multilines = {
					enabled = true,
					always_show = true,
				},
			},
		})
		vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
	end,
}
