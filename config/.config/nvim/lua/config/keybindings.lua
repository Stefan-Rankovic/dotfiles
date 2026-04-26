-- SPDX-License-Identifier: GPL-3.0-only

--

-- Plugs

--

-- Closing
vim.keymap.set("n", "<Plug>(close_current_buffer)", "<cmd>BufferClose<cr>")
vim.keymap.set("n", "<Plug>(close_all_buffers)", "<cmd>q<cr>")
vim.keymap.set("n", "<Plug>(force_close_all_buffers)", "<cmd>q!<cr>")
vim.keymap.set("n", "<Plug>(close_neotree)", "<cmd>Neotree close<cr>")
vim.keymap.set("n", "<Plug>(close_current_buffer_and_neotree)", "<Plug>(close_neotree)<Plug>(close_current_buffer)")
vim.keymap.set("n", "<Plug>(close_all_buffers_and_neotree)", "<Plug>(close_neotree)<Plug>(close_all_buffers)")
vim.keymap.set(
	"n",
	"<Plug>(force_close_all_buffers_and_neotree)",
	"<Plug>(close_neotree)<Plug>(force_close_all_buffers)"
)

-- Buffer movement
vim.keymap.set("n", "<Plug>(previous_buffer)", "<cmd>BufferPrevious<cr>")
vim.keymap.set("n", "<Plug>(next_buffer)", "<cmd>BufferNext<cr>")
vim.keymap.set("n", "<Plug>(pin_current_buffer)", "<cmd>BufferPin<cr>")

-- Saving
vim.keymap.set("n", "<Plug>(save_current_buffer)", "<cmd>w<cr>")
vim.keymap.set("n", "<Plug>(save_all_buffers)", "<cmd>wa<cr>")
vim.keymap.set(
	"n",
	"<Plug>(save_all_buffers_and_exit)",
	"<Plug>(save_all_buffers)<Plug>(close_all_buffers_and_neotree)"
)

-- File tree
vim.keymap.set("n", "<Plug>(toggle_neotree)", "<cmd>Neotree toggle<cr>")
vim.keymap.set("n", "<Plug>(focus_neotree)", "<cmd>Neotree action=focus<cr>")

-- Formatting
vim.keymap.set("n", "<Plug>(format_current_buffer)", function()
	require("conform").format({ async = true })
end)

-- Reload
vim.keymap.set("n", "<Plug>(restart_lsp)", "<cmd>lsp restart<cr>") -- LSP
vim.keymap.set("n", "<Plug>(reload_nvim)", "<Plug>(restart_lsp)") -- Everything

--

-- Keybinds

--

-- Closing [q]
vim.keymap.set("n", "<leader>q", "", { desc = "Closing" })
vim.keymap.set("n", "<leader>qb", "<Plug>(close_current_buffer)", { desc = "Closes the current buffer" })
vim.keymap.set("n", "<leader>qa", "<Plug>(close_all_buffers_and_neotree)", { desc = "Exit" })
vim.keymap.set("n", "<leader>qfa", "<Plug>(force_close_all_buffers_and_neotree)", { desc = "Force exit" })
vim.keymap.set("n", "<leader>qt", "<Plug>(close_neotree)", { desc = "Closes the file tree" })

-- Buffer movement [b]
vim.keymap.set("n", "<leader>b", "", { desc = "Buffer movement" })
vim.keymap.set("n", "<leader>bh", "<Plug>(previous_buffer)", { desc = "Select previous buffer" })
vim.keymap.set("n", "<leader>bl", "<Plug>(next_buffer)", { desc = "Select next buffer" })
vim.keymap.set("n", "<leader>bp", "<Plug>(pin_current_buffer)", { desc = "Pin current buffer" })

-- Saving [w]
vim.keymap.set("n", "<leader>w", "", { desc = "Saving" })
vim.keymap.set("n", "<leader>ww", "<Plug>(save_current_buffer)", { desc = "Save current buffer" })
vim.keymap.set("n", "<leader>wb", "<Plug>(save_current_buffer)", { desc = "Save current buffer" })
vim.keymap.set("n", "<leader>wa", "<Plug>(save_all_buffers)", { desc = "Save all buffers" })
vim.keymap.set(
	"n",
	"<leader>wq",
	"<Plug>(save_all_buffers_and_exit)",
	{ desc = "Saves all buffers, closes file tree, and exits" }
)

-- File tree [t]
vim.keymap.set("n", "<leader>t", "", { desc = "File tree" })
vim.keymap.set("n", "<leader>tt", "<Plug>(toggle_neotree)", { desc = "Toggle the file tree" })
vim.keymap.set("n", "<leader>tf", "<Plug>(focus_neotree)", { desc = "Show and select (focus) the file tree" })

-- Formatting
vim.keymap.set("n", "<leader>f", "", { desc = "Formatting" })
vim.keymap.set("n", "<leader>ff", "<Plug>(format_current_buffer)", { desc = "Format current buffer" })
vim.keymap.set("n", "<leader>fb", "<Plug>(format_current_buffer)", { desc = "Format current buffer" })

-- Other
vim.keymap.set("n", "<leader>r", "", { desc = "Reloading" })
vim.keymap.set("n", "<leader>rl", "<Plug>(restart_lsp)", { desc = "Restart LSP" })
vim.keymap.set("n", "<leader>rr", "<Plug>(reload_nvim)", { desc = "Reload everything" })
