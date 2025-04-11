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

  -- themes
  --"morhetz/gruvbox",

  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},

  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
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


-- nvim-tree new
require("nvim-treesitter.configs").setup({
  ensure_installed = { "python", "lua", "json", "bash", "markdown" },
  highlight = {
    enable = true,
  },
})
