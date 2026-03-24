-- SPDX-License-Identifier: GPL-3.0-only

-- When typing, this plugin shows the box for suggestions (doesn't provide any suggestions though).
--
-- https://github.com/xzbdmw/colorful-menu.nvim

return {
	"xzbdmw/colorful-menu.nvim",
	config = function()
		require("colorful-menu").setup()
	end,
}
