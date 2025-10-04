local personal_function = require("config.functions")

-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- ejecutar un quick chat de copilot
vim.keymap.set("n", "<leader>cn", personal_function.chatCopilot, { desc = "quick chat Copilot" })

-- abrir chat de copilot
vim.keymap.set("n", "<leader>cN", personal_function.toggleChatCopilot, { desc = "Chat flotante Copilot" })
