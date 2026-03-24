-- SPDX-License-Identifier: GPL-3.0-only

-- Tabs at the top.
--
-- https://github.com/romgrk/barbar.nvim

return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			-- "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
	},
}
