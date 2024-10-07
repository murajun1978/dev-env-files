return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "canary",
  dependencies = {
    "zbirenbaum/copilot.lua",
    "nvim-lua/plenary.nvim",
  },
  build = "make tiktoken",
  opts = {
    debug = true,
  },
  config = function()
    local copilotChat = require("CopilotChat")
    local select = require('CopilotChat.select')

    copilotChat.setup({
      prompts = {
        Explain = {
          prompt = '/COPILOT_EXPLAIN Write an explanation for the active selection as paragraphs of text.',
          mapping = '<leader>ce',
        },
        Review = {
          prompt = '/COPILOT_REVIEW Review the selected code.',
          mapping = '<leader>cr',
        },
        Fix = {
          prompt = '/COPILOT_GENERATE There is a problem in this code. Rewrite the code to show it with the bug fixed.',
          mapping = '<leader>cf',
        },
        Optimize = {
          prompt = '/COPILOT_GENERATE Optimize the selected code to improve performance and readability.',
          mapping = '<leader>co',
        },
        Docs = {
          prompt = '/COPILOT_GENERATE Please add documentation comment for the selection.',
          mapping = '<leader>cd',
        },
        Tests = {
          prompt = '/COPILOT_GENERATE Please generate tests for my code.',
          mapping = '<leader>ct',
        },
        FixDiagnostic = {
          prompt = 'Please assist with the following diagnostic issue in file:',
          mapping = '<leader>cd',
          selection = select.diagnostics,
        },
        Commit = {
          prompt = 'Write commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit.',
          mapping = '<leader>cco',
          selection = select.gitdiff,
        },
        CommitStaged = {
          prompt = 'Write commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit.',
          mapping = '<leader>cs',
          selection = function(source)
              return select.gitdiff(source, true)
          end,
        },
      },
    })
  end,
}
