-- repo: https://github.com/folke/tokyonight.nvim

return {
  "folke/tokyonight.nvim",
  lazy = false,
  name = "tokyonight",
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = true, -- Habilita el fondo transparente
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        sidebars = "transparent", -- style for sidebars, see below
        floats = "transparent", -- style for floating windows
      },
    })
  end,
}
