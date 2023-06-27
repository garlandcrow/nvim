return {
  { "rktjmp/lush.nvim" },

  {
    -- "garlandcrow/chibanight.nvim",
    dir = "/Users/garlandcrow/Repos/skittle_free_zone",
    name = "skittle_free_zone",
    lazy = false,
    enabled = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd("colorscheme skittle_free_zone")
    end,
  },

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
    -- "garlandcrow/chibanight.nvim",
    dir = "/Users/garlandcrow/Repos/chibanight.nvim",
    name = "chibanight",
    lazy = false,
    -- enabled = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = {
      style = "moon",
      transparent = true,
      on_colors = function(colors)
        colors.border = colors.dark3
      end,
      on_highlights = function(hl, c)
        require("notify").setup({
          background_colour = c.bg_dark,
        })
        hl.EndOfBuffer = {
          fg = c.dark3,
        }
        hl.NeoTreeEndOfBuffer = {
          fg = c.bg_dark,
        }
        hl.NeoTreeNormal = {
          bg = "",
        }
        hl.NeoTreeNormalNC = {
          bg = "",
        }
      end,
    },
    config = function(_, opts)
      require("chibanight").setup(opts)
      vim.cmd("colorscheme chibanight")
    end,
  },

  {
    "EdenEast/nightfox.nvim",
    enabled = false,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = true,
        },
      })

      vim.cmd("colorscheme nightfox")
    end,
  },

  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "chibanight",
  --   },
  -- },
  --
  {
    "olivercederborg/poimandres.nvim",
    enabled = false,
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    -- priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      local utils = require("poimandres.utils")
      local colors = require("poimandres.palette")

      require("poimandres").setup({
        disable_background = true,
      })
      vim.cmd("colorscheme poimandres")

      utils.highlight("CursorLine", { bg = colors.background1 })
      utils.highlight("@string", { fg = "#c099ff" })
      utils.highlight("@comment", { fg = "#46587D" })
      utils.highlight("@variable", { fg = colors.white })
      utils.highlight("identifier", { fg = colors.white })
      utils.highlight("property_identifier", { fg = colors.white })
      -- utils.highlight("lualine_a_normal", { bg = "#7aa2f7" })
      require("notify").setup({
        background_colour = colors.background2,
      })
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
