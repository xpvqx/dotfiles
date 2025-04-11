-- spacebar leader key
vim.g.mapleader = " "

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- keybind to toggle the tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
