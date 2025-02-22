return {
  -- Plugin: noice
  -- URL: https://github.com/folke/noice.nvim
  -- Description: pluggin para notificaciones visuales

  "folke/noice.nvim",
  config = function()
    require("noice").setup({
      cmdline = {
        -- view = "cmdline", -- use the cmdline view for the command-line
        view = "cmdline_popup",
      },
      presets = {
        bottom_search = true, -- enable bottom search view
        command_palette = true, -- enable command palette view
        lsp_doc_border = true, -- enable LSP documentation border
        long_message_to_split = true, -- split long messages into multiple lines
      },
    })
  end,
}
