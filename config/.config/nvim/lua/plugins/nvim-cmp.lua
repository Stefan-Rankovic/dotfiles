-- SPDX-License-Identifier: GPL-3.0-only

-- Completion plugin.
--
-- https://github.com/hrsh7th/nvim-cmp

return {
	"hrsh7th/nvim-cmp",
	event = { "InsertEnter", "CmdlineEnter" },
	dependencies = {
		"https://codeberg.org/FelipeLema/cmp-async-path",
		"ray-x/cmp-treesitter",
		"lukas-reineke/cmp-rg",
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},

	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				}),
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					else
						fallback()
					end
				end, { "i", "s" }),
				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
			}),
			sources = {
				{ name = "async_path" },
				{ name = "treesitter" },
				{ name = "rg" },
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "crates" },
				-- more sources
			},
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			formatting = {
				format = function(entry, vim_item)
					local highlights_info = require("colorful-menu").cmp_highlights(entry)

					-- highlight_info is nil means we are missing the ts parser, it's
					-- better to fallback to use default `vim_item.abbr`. What this plugin
					-- offers is two fields: `vim_item.abbr_hl_group` and `vim_item.abbr`.
					if highlights_info ~= nil then
						vim_item.abbr_hl_group = highlights_info.highlights
						vim_item.abbr = highlights_info.text
					end

					return vim_item
				end,
			},
		})
	end,
}
