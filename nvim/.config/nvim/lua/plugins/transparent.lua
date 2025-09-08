return {
  "xiyaowong/nvim-transparent",
  config = function()
    require("transparent").setup({
      extra_groups = {
        "Normal",
        "NormalNC",
        "NormalFloat",
        "NvimTreeNormal",
        "NeoTreeNormal",
        "StatusLine",
        "StatusLineNC",
        "TelescopeNormal",
        "TelescopeBorder",
      },
      exclude_groups = {},
    })
    vim.cmd("TransparentEnable")
  end,
}
