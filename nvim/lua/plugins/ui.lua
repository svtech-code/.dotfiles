return {
  -- Plugin: snacks.nvim
  -- URL: https://github.com/folke/snacks.nvim
  -- Description: pluggin para personalizar presentación de nvim

  "folke/snacks.nvim",
  opts = {
    image = {},
    dashboard = {
      sections = {
        { section = "header" },
        { section = "keys", gap = 1, indent = 2, padding = 1 },
        { section = "startup" },
        -- { icon = " ", title = "Keymaps", section = "keys", gap = 1, indent = 2, padding = 1 },
        -- { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        --{ icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
      },
      preset = {
        header = [[

  ███████╗██╗   ██╗    ████████╗███████╗ ██████╗██╗  ██╗
  ██╔════╝██║   ██║    ╚══██╔══╝██╔════╝██╔════╝██║  ██║
  ███████╗██║   ██║       ██║   █████╗  ██║     ███████║
  ╚════██║╚██╗ ██╔╝       ██║   ██╔══╝  ██║     ██╔══██║
  ███████║ ╚████╔╝        ██║   ███████╗╚██████╗██║  ██║
  ╚══════╝  ╚═══╝         ╚═╝   ╚══════╝ ╚═════╝╚═╝  ╚═╝
                                                      
 
   ██████╗ ██████╗ ██████╗ ███████╗
  ██╔════╝██╔═══██╗██╔══██╗██╔════╝
  ██║     ██║   ██║██║  ██║█████╗  
  ██║     ██║   ██║██║  ██║██╔══╝  
  ╚██████╗╚██████╔╝██████╔╝███████╗
   ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝
                                 
]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          -- { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          -- { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },

  config = function(_, opts)
    require("snacks").setup(opts)
    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#00b0c2", bold = true })
  end,
}
