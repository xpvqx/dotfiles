-- test comment
require("keymaps")
-- require("options")

-- Basic options
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.smartindent = true

-- Set leader key
vim.g.mapleader = " "

-- Key mappings
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- Optional: Set colorscheme
vim.cmd.colorscheme("default")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- LSP
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

  -- Autocompletion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",

  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
})

require("nvim-treesitter.configs").setup({
  ensure_installed = { "python", "lua", "json", "bash", "markdown" },
  highlight = {
    enable = true,
  },
})

-- LSP Setup
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "pyright" },
})

local lspconfig = require("lspconfig")
require("mason-lspconfig").setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      capabilities = require("cmp_nvim_lsp").default_capabilities()
    })
  end,
})

-- Completion Setup
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
  },
})

-- Nvim-tree setup
require("nvim-tree").setup({
  -- Optional settings for nvim-tree (can customize as needed)
  open_on_tab = true,          -- Open tree when a new tab is opened
  view = {
    width = 30,                -- Width of the file tree
    side = "left",             -- Position of the tree (left or right)
  },
  renderer = {
    highlight_opened_files = "name",  -- Highlight opened files
  },
})
