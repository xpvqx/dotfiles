-- spacebar leader key
vim.g.mapleader = " "

-- keybind to toggle the tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
