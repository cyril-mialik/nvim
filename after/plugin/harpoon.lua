local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>e", mark.add_file)
vim.keymap.set("n", "<leader>a", ui.toggle_quick_menu)

