-- SPDX-License-Identifier: GPL-3.0-only
--
-- Automatically opens buffers from previous nvim session. It knows what session is which based on the current working directory and git branch.
--
-- https://github.com/rmagatti/auto-session

return {
	"rmagatti/auto-session",
	dependencies = {
		"nvim-lualine/lualine.nvim",
	},
	lazy = false,
	opts = {
		git_use_branch_name = true, -- So it doesn't load sessions from different branches

		-- Adapt to changes of the current working directory
		cwd_change_handling = true,
		pre_cwd_changed_cmds = {
			"Neotree close",
		},
		post_cwd_changed_cmds = {
			"Neotree show",
			function()
				require("lualine").refresh()
			end,
		},

		suppressed_dirs = {
			"/",
			"~/",
		},
	},
}
