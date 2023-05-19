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
}
