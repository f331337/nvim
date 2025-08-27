vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>n', '<Cmd>Neotree toggle<CR>')


vim.keymap.set('n', '<leader>x', '<Cmd>!tidy --tidy-mark no -indent -quiet -wrap 80 -modify %<CR>', { desc = "Run tidy on current file" })
