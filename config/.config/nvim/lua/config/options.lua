-- SPDX-License-Identifier: GPL-3.0-only

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.tabstop = 4 -- Display a tab as 4 spaces, not 8.
vim.opt.softtabstop = 4 -- number of spaces in tab when editing
vim.opt.shiftwidth = 4 -- insert 4 spaces on a tab
-- vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.number = true -- show absolute line number
vim.opt.relativenumber = true -- show relative line number
vim.opt.termguicolors = true -- without this, nvim complains for some reason

-- Searching
vim.opt.incsearch = true -- search as characters are entered
vim.opt.hlsearch = false -- do not highlight matches
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true -- but make it case sensitive if an uppercase is entered
