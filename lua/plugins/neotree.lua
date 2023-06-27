return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- keys = {
    --   {
    --     "<leader>fE",
    --     function()
    --       require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
    --     end,
    --     desc = "Explorer NeoTree (root dir)",
    --   },
    --   {
    --     "<leader>fe",
    --     function()
    --       require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
    --     end,
    --     desc = "Explorer NeoTree (cwd)",
    --   },
    --   { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (root dir)", remap = true },
    --   { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
    -- },
    opts = {
      event_handlers = {
        {
          event = "file_opened",
          handler = function()
            --auto close
            require("neo-tree").close_all()
          end,
        },
      },
    },
  },
}
