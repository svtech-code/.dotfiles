-- installaiton, configuration and theme selection

-- logo colo asssignment
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#00b0c2", bold = true })

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
  {
    "omu9f/memento.nvim",
    lazy = false,
    name = "memento",
    priority = 1000,
    config = function()
      require("memento").setup({
        style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = true, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = false },
          keywords = { italic = false },
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "transparent", -- style for sidebars, see below
          floats = "transparent", -- style for floating windows
        },
      })
      -- set the colorscheme
      -- vim.cmd.colorscheme("memento")
    end,
  },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   lazy = false,
  --   name = "kanagawa",
  --   priority = 1000,
  --   config = function()
  --     require("kanagawa").setup({
  --       transparent = true, -- Habilita el fondo transparente
  --     })
  --   end,
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    name = "tokyonight",
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "storm",
        transparent = true, -- Habilita el fondo transparente
        terminal_colors = true,
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = false },
          keywords = { italic = false },
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "transparent", -- style for sidebars, see below
          floats = "transparent", -- style for floating windows
        },
      })
    end,
  },

  ----configure LazyVim to load kanagawa
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa-dragon",
      -- colorscheme = "catppuccin",
      colorscheme = "tokyonight",
      -- colorscheme = "memento",
    },
  },
}
