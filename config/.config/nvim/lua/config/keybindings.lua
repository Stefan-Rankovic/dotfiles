-- SPDX-License-Identifier: GPL-3.0-only

-- Saving
vim.keymap.set("n", "<leader>w", "", { desc = "Saving" })
vim.keymap.set("n", "<leader>ww", "<cmd>w<cr>", { desc = "Save current buffer" })
vim.keymap.set("n", "<leader>wa", "<cmd>wa<cr>", { desc = "Save all buffers" })
vim.keymap.set(
	"n",
	"<leader>wq",
	"<cmd>Neotree close<cr><cmd>wa<cr><cmd>q<cr>",
	{ desc = "Saves all buffers, closes neotree, then quits" }
)

-- Quitting
vim.keymap.set("n", "<leader>q", "<cmd>Neotree close<cr><cmd>q<cr>", { desc = "Closes the file tree and then quits" })

-- Buffer movement
vim.keymap.set("n", "<leader>b", "", { desc = "Buffers" })
vim.keymap.set("n", "<leader>bh", "<cmd>BufferPrevious<cr>", { desc = "Select previous buffer" })
vim.keymap.set("n", "<leader>bl", "<cmd>BufferNext<cr>", { desc = "Select next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>BufferPin<cr>", { desc = "Pin current buffer" })
vim.keymap.set("n", "<leader>bx", "<cmd>BufferClose<cr>", { desc = "Close current buffer" })

-- File tree
vim.keymap.set("n", "<leader>t", "", { desc = "File tree" })
vim.keymap.set("n", "<leader>tt", "<cmd>Neotree toggle<cr>", { desc = "Toggle the file tree" })
vim.keymap.set("n", "<leader>tc", "<cmd>Neotree action=close<cr>", { desc = "Close the file tree" })
vim.keymap.set("n", "<leader>ts", "<cmd>Neotree action=show<cr>", { desc = "Show the file tree" })
vim.keymap.set("n", "<leader>tf", "<cmd>Neotree action=focus<cr>", { desc = "Show and select (focus) the file tree" })
