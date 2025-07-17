-- ~/.config/nvim/lua/plugins/noice_centered_cmdline.lua

return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- Use the cmdline_popup view to center the command line
      opts.cmdline = {
        view = "cmdline_popup",
      }
      opts.views = opts.views or {}
      opts.views.cmdline_popup = {
        position = {
          row = "50%", -- vertical center
          col = "50%", -- horizontal center
        },
        size = {
          width = "60%", -- adjust to your liking
          height = "auto",
        },
        border = {
          style = "rounded",
          padding = { 1, 2 },
        },
        win_options = {
          winhighlight = {
            Normal = "NormalFloat",
            FloatBorder = "FloatBorder",
          },
        },
      }
    end,
  },
}
