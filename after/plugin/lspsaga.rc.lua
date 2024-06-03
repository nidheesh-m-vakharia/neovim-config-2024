local status, saga = pcall(require, "lspsaga")
if not status then
    return
end


local opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<C-j>', "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.api.nvim_set_keymap('n', '<K>', "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>gf', "<cmd>Lspsaga finder<CR>", opts)
vim.api.nvim_set_keymap('n', '<C-k>', "<Cmd>Lspsaga signature_help<CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>gd', "<Cmd>Lspsaga goto_definition<CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>pd', "<Cmd>Lspsaga peek_definition<CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>gr', "<Cmd>Lspsaga rename<CR>", opts)
vim.api.nvim_set_keymap('n', '<A-t>', "<Cmd>Lspsaga term_toggle<CR>", opts)

