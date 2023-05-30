-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- lsp
-- vim.keymap.set("n", "<leader><space>", "<cmd>CodeActionMenu<cr>", { desc = "CodeActionMenu" })

-- harpoon
-- vim.keymap.set("n", "<leader>'", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Add to Harpoon" })
-- vim.keymap.set("n", "<leader>0", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Show Harpoon" })
-- vim.keymap.set("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = "Harpoon Buffer 1" })
-- vim.keymap.set("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = "Harpoon Buffer 2" })
-- vim.keymap.set("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = "Harpoon Buffer 3" })
-- vim.keymap.set("n", "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = "Harpoon Buffer 4" })
-- vim.keymap.set("n", "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", { desc = "Harpoon Buffer 5" })
-- vim.keymap.set("n", "<leader>6", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", { desc = "Harpoon Buffer 6" })
-- vim.keymap.set("n", "<leader>7", "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", { desc = "Harpoon Buffer 7" })
-- vim.keymap.set("n", "<leader>8", "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", { desc = "Harpoon Buffer 8" })
-- vim.keymap.set("n", "<leader>9", "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", { desc = "Harpoon Buffer 9" })

-- buffer
-- vim.keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Telescope" })
-- vim.keymap.set("n", "<leader>bj", "<cmd>bn<cr>", { desc = "Next" })
-- vim.keymap.set("n", "<leader>bk", "<cmd>bp<cr>", { desc = "Previous" })
-- vim.keymap.set("n", "<leader>bn", "<cmd>bn<cr>", { desc = "Next" })
-- vim.keymap.set("n", "<leader>bp", "<cmd>bp<cr>", { desc = "Previous" })
-- vim.keymap.set("n", "<leader>bsd", "<cmd>%bd|e#|bd#<cr>|'<cr>", { desc = "Delete surrounding" })

-- -- Remap i to move up
-- vim.keymap.set("n", "i", "k", { noremap = true })
-- vim.keymap.set("v", "i", "k", { noremap = true })
-- vim.keymap.set("o", "i", "k", { noremap = true })
-- -- Remap k to move down
-- vim.keymap.set("n", "k", "j", { noremap = true })
-- vim.keymap.set("v", "k", "j", { noremap = true })
-- vim.keymap.set("o", "k", "j", { noremap = true })
-- -- Remap j to move left
-- vim.keymap.set("n", "j", "h", { noremap = true })
-- vim.keymap.set("v", "j", "h", { noremap = true })
-- vim.keymap.set("o", "j", "h", { noremap = true })
-- -- Remap h to enter insert mode
-- vim.keymap.set("n", "h", "i", { noremap = true })
-- vim.keymap.set("v", "h", "i", { noremap = true })
-- vim.keymap.set("o", "h", "i", { noremap = true })
-- -- Remap H to do the same as I
-- vim.keymap.set("n", "H", "0i", { noremap = true })

-- move lines up/down
vim.keymap.set("v", "I", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")

-- redo
vim.keymap.set("n", "U", "<C-r>", { noremap = true })

-- swap pastes, just cause im used to before cursor
vim.keymap.set("n", "p", "P", { noremap = true })
vim.keymap.set("n", "P", "p", { noremap = true })

-- vim.keymap.set(
--   "n",
--   "<leader>sx",
--   require("telescope.builtin").resume,
--   { noremap = true, silent = true, desc = "Resume" }
-- )

-- Swap ; and :
-- vim.keymap.set("n", ";", ":", { noremap = true })
-- vim.keymap.set("n", ":", ";", { noremap = true })

-- swap arrows in the command dropdown to make sense visually
vim.keymap.set("c", "<up>", "wildmenumode() ? '<left>' : '<up>'", { expr = true, noremap = true })
vim.keymap.set("c", "<down>", "wildmenumode() ? '<right>' : '<down>'", { expr = true, noremap = true })
vim.keymap.set("c", "<left>", "wildmenumode() ? '<up>' : '<left>'", { expr = true, noremap = true })
vim.keymap.set("c", "<right>", "wildmenumode() ? '<bs><C-Z>' : '<right>'", { expr = true, noremap = true })

-- joins two lines but leaves the cursor at the end of the joined line
vim.keymap.set("n", "J", "mzJ`z")

-- center after moving up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- go to the next match of the last search, center the screen on that line, and open any folds that are hiding the line
vim.keymap.set("n", "n", "nzzzv")

-- paste over selected text (delete selected text to black hole, then paste)
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste over selection" })

-- delete to black hole
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to black hole" })

vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format, { desc = "Format buffer" })
vim.keymap.set("n", "<leader>bx", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make buffer executable" })

vim.keymap.set(
  "n",
  "<leader>r",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace all cursor word" }
)

-- vim.keymap.set("v", "<leader>r", [[:'<,'>y<CR>:%s/\<<C-r>"\>//gI<Left><Left><Left>]], { desc = "Replace all selected text in file" })
vim.keymap.set(
  "v",
  "<leader>r",
  [[y:let @z=@"<CR>:%s/<C-r>z//gI<Left><Left><Left>]],
  { desc = "Replace all selected text in file" }
)

vim.keymap.set({ "n", "v", "i" }, "<C-x>", function()
  require("mini.bufremove").delete(0, false)
end)

vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bl", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
-- vim.keymap.set("n", "<leader>jj", function()
--   local count = #vim.api.nvim_list_wins()
--   if count == 1 then
--     return "<C-w>q"
--   else
--     return "<C-w>q"
--   end
-- end, { expr = true })

-- disabled keys
vim.keymap.set("n", "s", "<nop>")
