local F = {}

F.description = function()
  local scheme = {
    "-- Plugin: ",
    "-- URL: ",
    "-- Description:",
    "",
  }
  vim.api.nvim_put(scheme, "l", true, true)
end

F.dartEject = function()
  local file = vim.fn.expand("%:p")
  -- vim.cmd("!dart" .. file)
  -- vim.cmd("split term://dart" .. file)
  vim.cmd("!dart" .. vim.fn.shellescape(file))
end

return F
