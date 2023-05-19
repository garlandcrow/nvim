return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        svelte = {},
        rust_analyzer = {},
        elixirls = {},
      },
    },
  }, --
  -- {
  --   "williamboman/mason.nvim",
  --   opts = {
  --     ensure_installed = {
  --       "svelte-language-server",
  --     },
  --   },
  -- },
}
