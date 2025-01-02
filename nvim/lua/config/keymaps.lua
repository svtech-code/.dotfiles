-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local personal_function = require("config.functions")

--- oil ---
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

--- insert description ---
vim.keymap.set("n", "<leader>a", personal_function.description, { desc = "Insertar esquema de detalle de un pluggin" })

---  ejecutar dart en terminal flotante ---
vim.keymap.set("n", "<leader>da", personal_function.dartEject, { desc = "Ejecutar dart en terminal" })
