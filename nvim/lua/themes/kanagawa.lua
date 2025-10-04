-- repo: https://github.com/rebelot/kanagawa.nvim

return {
  -- "rebelot/kanagawa.nvim",
  -- name = "kanagawa",
  -- priority = 1000, -- High priority to ensure it loads early
  -- opts = {
  --   transparent = true, -- Enable transparent background
  --   theme = "dragon", -- Set the theme variant to 'dragon'
  --   overrides = function(colors)
  --     local theme = colors.theme
  --     return {
  --       NormalFloat = { bg = "none" }, -- Transparent background for floating windows
  --       FloatBorder = { bg = "none" }, -- Transparent background for floating window borders
  --       FloatTitle = { bg = "none" }, -- Transparent background for floating window titles
  --
  --       NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 }, -- Custom colors for dark mode
  --
  --       LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim }, -- Custom colors for Lazy plugin
  --       MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim }, -- Custom colors for Mason plugin
  --
  --       TelescopeTitle = { fg = theme.ui.special, bold = true }, -- Custom colors for Telescope titles
  --       TelescopePromptNormal = { bg = theme.ui.bg_p1 }, -- Custom colors for Telescope prompt
  --       TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 }, -- Custom colors for Telescope prompt border
  --       TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 }, -- Custom colors for Telescope results
  --       TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 }, -- Custom colors for Telescope results border
  --       TelescopePreviewNormal = { bg = theme.ui.bg_dim }, -- Custom colors for Telescope preview
  --       TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim }, -- Custom colors for Telescope preview border
  --
  --       Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- Custom colors for popup menu
  --       PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 }, -- Custom colors for selected item in popup menu
  --       PmenuSbar = { bg = theme.ui.bg_m1 }, -- Custom colors for popup menu scrollbar
  --       PmenuThumb = { bg = theme.ui.bg_p2 }, -- Custom colors for popup menu thumb
  --     }
  --   end,
  -- },

  "rebelot/kanagawa.nvim",
  priority = 1000,
  lazy = true,
  config = function()
    require("kanagawa").setup({
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = {
          wave = {},
          lotus = {},
          dragon = {},
          all = {
            ui = {
              bg_gutter = "none", -- set bg color for normal background
              bg_sidebar = "none", -- set bg color for sidebar like nvim-tree
              bg_float = "none", -- set bg color for floating windows
            },
          },
        },
      },
      overrides = function(colors) -- add/modify highlights
        return {
          LineNr = { bg = "none" },
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          TelescopeNormal = { bg = "none" },
          TelescopeBorder = { bg = "none" },
          LspInfoBorder = { bg = "none" },
        }
      end,
      theme = "wave", -- Load "wave" theme
      background = { -- map the value of 'background' option to a theme
        dark = "wave", -- try "dragon" !
        light = "lotus",
      },
    })
  end,
}
