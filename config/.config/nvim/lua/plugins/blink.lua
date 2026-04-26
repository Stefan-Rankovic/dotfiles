-- SPDX-License-Identifier: GPL-3.0-only
--
-- Autocompletion thing. Does so many things like:
--		- Autocompletion engine
--		- Show menu for autocompletion (with selection and insertion)
--		- Built-in completion sources (like lsp or path)
--		- Support for external sources (like rg or env)
--		- And probably more
--
-- https://github.com/Saghen/blink.cmp

return {
	"saghen/blink.cmp",
	dependencies = {
		"saghen/blink.lib",
		"L3MON4D3/LuaSnip",
		"xzbdmw/colorful-menu.nvim",
		"bydlw98/blink-cmp-env", -- Cmp source for env variables
		"niuiic/blink-cmp-rg.nvim", -- Cmp source for `rg`.
	},

	build = "cargo build --release",
	-- Blink docs say the following is correct, yet it doesn't work for some reason.
	-- build = function()
	-- 	-- build the fuzzy matcher, wait up to 60 seconds
	-- 	-- you can use `gb` in `:Lazy` to rebuild the plugin as needed
	-- 	require("blink.cmp").build():wait(60000)
	-- end,
	version = "*",

	opts = {
		completion = { accept = { auto_brackets = { enabled = false } } },

		keymap = {
			preset = "none",
			-- I have Ctrl+\ binded to Caps Lock; change this to anything you want.
			["<C-\\>"] = { "select_and_accept", "fallback" },
			["<A-2>"] = { "select_prev", "fallback" },
			["<A-3>"] = { "select_next", "fallback" },
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer", "ripgrep", "env" },
			providers = {
				ripgrep = {
					name = "Ripgrep",
					module = "blink-cmp-rg",
				},
				env = {
					name = "Env",
					module = "blink-cmp-env",
				},
			},
		},
		-- Uncomment the following for colorful-menu.
		-- completion = {
		-- 	menu = {
		-- 		draw = {
		-- 			components = {
		-- 				label = {
		-- 					text = function(ctx)
		-- 						return require("colorful-menu").blink_components_text(ctx)
		-- 					end,
		-- 					highlight = function(ctx)
		-- 						return require("colorful-menu").blink_components_highlight(ctx)
		-- 					end,
		-- 				},
		-- 			},
		-- 		},
		-- 	},
		-- },
	},
}
