return {
  -- Plugin: git
  -- URL: https://github.com/dinhhuy258/git.nvim
  -- Description: pluggin para integración con git

  "dinhhuy258/git.nvim",
  event = "BufReadPre",
  opts = {
    keymaps = {
      blame = "<leader>gb",
      browse = "<leader>go",
    },
  },
}
