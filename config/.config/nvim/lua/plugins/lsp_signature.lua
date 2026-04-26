-- SPDX-License-Identifier: GPL-3.0-only
--
-- Look at function signature while you type.
--
-- https://github.com/ray-x/lsp_signature.nvim

return {
	"ray-x/lsp_signature.nvim",
	event = "InsertEnter",
	opts = {
		bind = true,
		handler_opts = {
			border = "rounded",
		},
	},
}
