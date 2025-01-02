-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0

--
-- vim.keymap.set("n", "<Space>a", function()
--  local text = "Esta es una función de prueba"
--  vim.api.nvim_buf_set_lines(0, -1, -1, true, { text })
-- end)
