-- SPDX-License-Identifier: GPL-3.0-only

-- Installs the framework for installing LSP servers (the things that can tell function1() is a function and not an integer and that doing "let a: u32 = 0;" defines an u32 instead of a &str.)
--
-- https://github.com/neovim/nvim-lspconfig

return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config.pyright = {
			cmd = { "pyright-langserver", "--stdio" },
			filetypes = { "python" },
		}
		vim.lsp.enable("pyright")

		vim.lsp.config.lua_ls = {
			cmd = { "lua-language-server" },
			filetypes = { "lua" },
			settings = { Lua = { diagnostics = { globals = { "vim" } } } },
		}
		vim.lsp.enable("lua_ls")

		-- Rustaceanvim already takes care of this
		-- vim.lsp.config("rust_analyzer", {
		-- 	settings = {
		-- 		["rust-analyzer"] = {
		-- 			checkOnSave = { command = "clippy" },
		-- 		},
		-- 	},
		-- })
		-- vim.lsp.enable("rust_analyzer")

		-- There's also hyprlang, which is in lua/hyprlang_lsp.lua

		-- vim.lsp.log.set_level("ERROR") -- I don't even know what this is used for
	end,
}
