return {
  "zbirenbaum/copilot.lua",
  lazy = false,
  cmd = {
    "Copilot",
  },
  config = function()
    local conform = require("copilot")

    conform.setup({})
  end,
}
