-- SPDX-License-Identifier: GPL-3.0-only

require("config.options") -- Make sure this is before config.lazy.
require("config.keybindings")
require("hyprlang_lsp")
require("config.lazy")

-- Show the file tree.
vim.cmd("Neotree show")
