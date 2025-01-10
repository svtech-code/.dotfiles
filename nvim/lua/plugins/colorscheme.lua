-- configure LazyVim to load themes
return {
  require("themes.rose-pine"),
  require("themes.tokyonight"),
  require("themes.kanagawa"),
  require("themes.catppuccin"),

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
