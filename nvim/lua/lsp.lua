require("mason").setup()
require("mason-lspconfig").setup({ ensure_installed = { "pyright" } })

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, bufnr)
  local bufmap = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, noremap = true, silent = true })
  end
  bufmap("n", "gd", vim.lsp.buf.definition)
  bufmap("n", "K", vim.lsp.buf.hover)
end

-- Directly start Pyright when opening a Python file
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function(args)
    vim.lsp.start({
      name = "pyright",
      cmd = { "pyright-langserver", "--stdio" },
      filetypes = { "python" },
      root_dir = vim.fs.dirname(
        vim.fs.find(
          { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git" },
          { upward = true }
        )[1] or vim.loop.cwd()
      ),
      capabilities = capabilities,
      on_attach = on_attach,
    }, { bufnr = args.buf })
  end,
})
