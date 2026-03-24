-- SPDX-License-Identifier: GPL-3.0-only

-- Adds a really beautiful and useful line at the bottom of the screen.
--
-- https://github.com/nvim-lualine/lualine.nvim

return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				-- originally palenight
				-- nightfly is an alternative, but it's gray INSERT color is ugly
				theme = "pywal16-nvim",
			},
		})
	end,
}
