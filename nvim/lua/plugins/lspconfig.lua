return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- ensure pyright is setup
      opts.servers = opts.servers or {}
      opts.servers.pyright = {}
    end,
  },
}
