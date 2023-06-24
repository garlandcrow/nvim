return {
  {
    "folke/tokyonight.nvim",
    opts = function()
      require("notify").setup({
        background_colour = "#000000",
      })
      return {
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      }
    end,
  },

  {
    "olivercederborg/poimandres.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("poimandres").setup({
        disable_background = true,
      })
      vim.cmd("colorscheme poimandres")
    end,
  },

  {
    "projekt0n/github-nvim-theme",
    enabled = false,
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        options = {
          transparent = true,
        },
      })
      vim.cmd("colorscheme github_dark_dimmed")
    end,
  },
}
