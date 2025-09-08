-- lua/plugins/pyright.lua

return {
  "neovim/nvim-lspconfig",
  ft = { "python" }, -- loads only for Python files
  config = function()
    require("lspconfig").pyright.setup({})
  end,
}
