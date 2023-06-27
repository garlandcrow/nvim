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

  {
    "nvim-treesitter/playground",
    keys = {
      {
        "<leader>uh",
        "<cmd>TSHighlightCapturesUnderCursor<cr>",
        desc = "Show TS Highlight",
      },
      {
        "<leader>ut",
        "<cmd>TSNodeUnderCursor<cr>",
        desc = "Show TS Node",
      },
      {
        "<leader>up",
        "<cmd>TSPlayground<cr>",
        desc = "Show TSPlayground",
      },
    },
  },
}
