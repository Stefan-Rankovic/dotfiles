-- SPDX-License-Identifier: GPL-3.0-only

-- Highlights whitespaces. Only those at the end of lines by default though.
-- Note that when saving, some package removes trailing whitespaces. That's also the reason why the example doesn't work as is; to make it work manually add trailing whitespaces (don't save).
-- This package has been kept because, in .toml files for example, trailing whitespaces are not removed.
-- Example:
--
-- https://github.com/aidancz/whitespace.nvim

return {
	"aidancz/whitespace.nvim",
	lazy = false,
	config = function()
		require("whitespace").setup({
			excluded_buftypes = {
				"nofile",
			},
		})
	end,
}
