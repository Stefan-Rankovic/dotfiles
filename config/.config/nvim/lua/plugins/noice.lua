-- SPDX-License-Identifier: GPL-3.0-only
--
-- Floating CMD and notifications in the top right as floating windows.
--
-- https://github.com/folke/noice.nvim

return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
}
