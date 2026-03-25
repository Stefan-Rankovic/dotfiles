-- SPDX-License-Identifier: GPL-3.0-only

return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme tokyonight]])
	end,
}
