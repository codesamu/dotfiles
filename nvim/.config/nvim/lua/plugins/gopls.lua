return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.gopls.setup({
      on_attach = function(client, bufnr)
        -- Optional: your custom keymaps for LSP features
        local buf_map = function(mode, lhs, rhs)
          local opts = { noremap = true, silent = true, buffer = bufnr }
          vim.keymap.set(mode, lhs, rhs, opts)
        end

        buf_map("n", "gd", vim.lsp.buf.definition)
        buf_map("n", "K", vim.lsp.buf.hover)
        buf_map("n", "gi", vim.lsp.buf.implementation)
        buf_map("n", "<leader>rn", vim.lsp.buf.rename)
        buf_map("n", "<leader>ca", vim.lsp.buf.code_action)
        buf_map("n", "gr", vim.lsp.buf.references)
      end,
      flags = {
        debounce_text_changes = 150,
      },
      settings = {
        gopls = {
          analyses = {
            unusedparams = true,
            nilness = true,
            unusedwrite = true,
            shadow = true,
          },
          staticcheck = true,
        },
      },
    })
  end,
}
