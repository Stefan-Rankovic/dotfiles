-- SPDX-License-Identifier: GPL-3.0-only

require("config.options") -- Make sure this is before config.lazy.
require("config.keybindings")
require("hyprlang_lsp")
require("config.lazy")

-- Show the file tree.
-- Schedule is used to prevent issues with auto-session.
vim.schedule(function()
	vim.cmd("Neotree show")
end)
