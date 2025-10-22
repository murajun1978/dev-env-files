return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "html",
      "cssls",
      "tailwindcss",
      "lua_ls",
      "ts_ls",
      "ruby_lsp",
      "herb_ls",
    },
  },
  dependencies = {
    {
      "mason-org/mason.nvim",
      opts = {
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          },
        },
      },
      "neovim/nvim-lspconfig",
    },
  },
}
