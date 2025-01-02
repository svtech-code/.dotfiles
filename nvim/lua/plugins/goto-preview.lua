return {
  -- Plugin: goto-preview
  -- URL: https://github.com/rmagatti/goto-preview
  -- Description: pluggin para ver el codigo en otro buffer de manera flotante

  "rmagatti/goto-preview",
  event = "BufEnter", -- Load the plugin when a buffer is entered
  config = true, -- Enable default configuration
  keys = {
    {
      "gp",
      "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
      noremap = true,
      desc = "goto preview definition",
    },
    {
      "gpp",
      "<cmd>lua require('goto-preview').close_all_win()<CR>",
      noremap = true,
      desc = "close all preview windows",
    },

    -- revisar funcionalidades para ver si las implemento

    --   {
    --     "gpD",
    --     "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
    --     noremap = true,
    --     desc = "goto preview declaration",
    --   },
    --   {
    --     "gpi",
    --     "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
    --     noremap = true,
    --     desc = "goto preview implementation",
    --   },
    --   {
    --     "gpy",
    --     "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
    --     noremap = true,
    --     desc = "goto preview type definition",
    --   },
    --   {
    --     "gpr",
    --     "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
    --     noremap = true,
    --     desc = "goto preview references",
    --   },
  },
}
