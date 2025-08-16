-- spacebar leader key
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>:')
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- toggle nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- move focus between the tree and buffer
vim.api.nvim_set_keymap("n", "<A-h>", ":wincmd h<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-l>", ":wincmd l<CR>", { noremap = true, silent = true }) 
