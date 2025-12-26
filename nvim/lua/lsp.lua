-- mason
require("mason").setup()

-- lsp capabilities for nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
pcall(function()
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
end)

-- lsp keymaps
local on_attach = function(_, bufnr)
  local map = function(lhs, rhs)
    vim.keymap.set("n", lhs, rhs, { buffer = bufnr })
  end

  map("gd", vim.lsp.buf.definition)
  map("K", vim.lsp.buf.hover)
  map("<leader>rn", vim.lsp.buf.rename)
  map("<leader>ca", vim.lsp.buf.code_action)
end

-- start pyright explicitly for python files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function(args)
    vim.lsp.start({
      name = "pyright",
      cmd = { "pyright-langserver", "--stdio" },
      root_dir = vim.fs.dirname(
        vim.fs.find(
          { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git" },
          { upward = true }
        )[1]
      ),
      capabilities = capabilities,
      on_attach = on_attach,
    }, { bufnr = args.buf })
  end,
})
