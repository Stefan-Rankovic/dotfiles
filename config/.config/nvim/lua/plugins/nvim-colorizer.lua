-- SPDX-License-Identifier: GPL-3.0-only

-- Colors things.
-- Example: #663399
--
-- https://github.com/norcalli/nvim-colorizer.lua

return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup()
	end,
}
