local prompts = {
  JsDocs = "Please provide JsDocs for the following code.",
}

return {
  -- Plugin: copilotChat
  -- URL: https://github.com/CopilotC-Nvim/CopilotChat.nvim
  -- Description: pluggin para integración de IA

  "CopilotC-Nvim/CopilotChat.nvim",
  opts = {
    prompts = prompts,
    -- model = "gpt-4o",
    model = "claude-3.5-sonnet",
    answer_header = " { sv tech } ",
    window = {
      layout = "float",
    },
  },
}
