-- SPDX-License-Identifier: GPL-3.0-only

return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	opts = {
		formatters = {
			sort_derives = {
				command = "cargo",
				args = { "sort-derives", "--path", "$FILENAME" },
				stdin = false, -- it writes to the file directly
			},
		},
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt", "sort_derives" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = { timeout_ms = 500 },
	},
}
