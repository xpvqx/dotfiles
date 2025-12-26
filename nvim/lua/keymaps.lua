-- spacebar leader key
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>:')
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- toggle nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- move focus between the tree and buffer
vim.keymap.set("n", "<A-h>", "<cmd>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<A-l>", "<cmd>wincmd l<CR>", { silent = true })
