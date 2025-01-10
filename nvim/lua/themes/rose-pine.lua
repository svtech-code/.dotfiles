-- repo: https://github.com/rose-pine/neovim

return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      variant = "moon",
      --   dark_variant = "moon",
      --   dim_inactive_windows = false,
      --   extend_background_behind_borders = true,
      --   enable = {
      --     terminal = true, -- Para la transparencia en la terminal integrada
      --     legacy_highlights = true,
      --     migrations = true,
      --   },
      --   styles = {
      --     bold = true,
      --     italic = true,
      --     transparency = true, -- Habilita la transparencia
      --   },
      --   groups = {
      --     border = "rose",
      --     panel = "surface",
      --     -- CursorLine = "subtle", -- Un color sutil para la línea del cursor
      --     -- LineNr = "muted", -- Números de línea en color muted
      --     -- FoldColumn = "rose",
      --     -- SignColumn = "muted",
      --   },
      --   highlight_groups = {
      --     Normal = { bg = "none" }, -- Fondo principal transparente
      --     NormalFloat = { bg = "none" }, -- Ventanas flotantes transparentes
      --     Pmenu = { bg = "none" }, -- Menu de autocompletado transparente
      --     PmenuSel = { bg = "none" }, -- Menu de autocompletado seleccionado transparente
      --     TelescopeNormal = { bg = "none" }, -- Telescope
      --     TelescopeBorder = { bg = "none" }, -- Telescope
      --     WhichKey = { bg = "none" },
      --     NotifyBackground = { bg = "none" }, -- notify.nvim
      --   },
    })
  end,
}
