-- SPDX-License-Identifier: GPL-3.0-only

-- Displays the file tree on the left.
--
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim", -- https://github.com/MunifTanjim/nui.nvim
			"nvim-tree/nvim-web-devicons", -- https://github.com/nvim-lua/plenary.nvim
			{
				"3rd/image.nvim", -- https://github.com/3rd/image.nvim
				build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
				opts = { processor = "magick_cli" },
			},
		},
		lazy = false, -- neo-tree will lazily load itself
	},
}
