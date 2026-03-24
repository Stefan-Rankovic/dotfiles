-- SPDX-License-Identifier: GPL-3.0-only

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	-- config = function()
	-- require("nvim-treesitter").setup()
	-- require("nvim-treesitter").install({ "bash", "json", "rust", "toml" }):wait(300000) -- wait 5 minutes maximum
	-- end,
}
