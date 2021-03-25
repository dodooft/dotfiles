require('kommentary.config').use_extended_mappings()

require('kommentary.config').configure_language("cpp", {
    prefer_single_line_comments = true,
})

vim.api.nvim_set_keymap("n", "<C-_>", "<Plug>kommentary_line_default", {})
-- vim.api.nvim_set_keymap("n", "<leader>c", "<Plug>kommentary_motion_default", {})
vim.api.nvim_set_keymap("v", "<C-_>", "<Plug>kommentary_visual_default", {})

