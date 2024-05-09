-- config file for all nvim keymaps
--
-- neo-tree keymaps
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", "<leader>nb", ":Neotree buffers reveal float<CR>", {})

-- git keymaps
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

-- lsp keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- none-ls keymaps
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})

-- telescope keymaps
-- check plugins/telescope.lua
