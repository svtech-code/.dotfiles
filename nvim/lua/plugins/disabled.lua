-- this file allows you to disable plugins without removing the configuration

return {
  {
    -- Plugin: bufferline.nvim
    -- URL: https://github.com/akinsho/bufferline.nvim
    -- Description: Plugin to view open baffer

    "akinsho/bufferline.nvim",
    enabled = false, -- colocar en true para volver a habilitarlo
  },
  {
    -- Desabilitar eslint de nvim, para utilizar archivo local de cada proyecto
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = false,
      },
    },
  },
}
