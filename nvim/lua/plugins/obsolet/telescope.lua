return {
  -- Plugin: telescope.nvim
  -- URL: https://github.com/nvim-telescope/telescope.nvim
  -- Description: pluggin para realizar búsquedas y explorar archivos

  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
  },
  opts = {
    defaults = {
      layout_strategy = "vertical",
      layout_config = { prompt_position = "bottom" },
      winblend = 10,
      -- sorting_strategy = "ascending",
    },
  },
}
