vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath("data") .. "/undo"
