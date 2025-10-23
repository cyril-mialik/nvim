local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>hs", mark.add_file)
vim.keymap.set("n", "<leader>hh", ui.toggle_quick_menu)

