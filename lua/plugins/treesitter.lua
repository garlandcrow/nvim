return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "rust",
        "toml",
        "svelte",
        "elixir",
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "python",
        "regex",
        "tsx",
        "typescript",
        "yaml",
      },
    },
  },
}
