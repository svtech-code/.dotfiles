-- installaiton, configuration and theme selection

-- logo colo asssignment
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#00b0c2", bold = true })

-- topic assignment
return {
  -- theme catppuccin
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })
    end,
  },

  --configure LazyVim to load kanagawa
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa-dragon",
      colorscheme = "catppuccin",
    },
  },
}
