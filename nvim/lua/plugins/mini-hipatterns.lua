return {
  -- Plugin: mini.hipatterns
  -- URL: https://github.com/echasnovski/mini.hipatterns
  -- Description: Provides highlighter patterns for various text patterns.

  -- "echasnovski/mini.hipatterns",
  "nvim-mini/mini.hipatterns",
  event = "BufReadPre", -- Load the plugin before reading a buffer
  opts = {
    highlighters = {
      hsl_color = {
        pattern = "hsl%(%d+,? %d+,? %d+%)", -- Pattern to match HSL color values
        group = function(_, match)
          local utils = require("config.utils")
          local h, s, l = match:match("hsl%((%d+),? (%d+),? (%d+)%)")
          h, s, l = tonumber(h), tonumber(s), tonumber(l)
          local hex_color = utils.hslToHex(h, s, l)
          return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
        end,
      },
    },
  },
}
