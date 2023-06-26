return {
  { import = "lazyvim.plugins.extras.coding.copilot" },
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<C-S-y>",
          accept_word = false,
          accept_line = false,
          next = "<down>",
          prev = "<up>",
          dismiss = "<C-e>",
        },
      },
    },
  },
}
