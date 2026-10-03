vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set('n', '<leader>vv', ':vsplit<CR>')
vim.keymap.set('n', '<leader>vs', ':split<CR>')

vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>pf", fzf.files)
vim.keymap.set("n", "<leader>ps", fzf.live_grep)

vim.keymap.set("n", "<leader>pg", vim.cmd.Git);

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>e", mark.add_file)
vim.keymap.set("n", "<leader>a", ui.toggle_quick_menu)

local neotest = require("neotest")
vim.keymap.set("n", "<leader>tr", function()
  neotest.run.run()
end, { desc = "Run nearest test" })

vim.keymap.set("n", "<leader>tf", function()
  neotest.run.run(vim.fn.expand("%"))
end, { desc = "Run current test file" })

vim.keymap.set("n", "<leader>td", function()
  neotest.run.run({ strategy = "dap" })
end, { desc = "Debug nearest test" })

vim.keymap.set("n", "<leader>ts", function()
  neotest.run.stop()
end, { desc = "Stop test run" })

vim.keymap.set("n", "<leader>to", function()
  neotest.output.open({ enter = true, auto_close = true })
end, { desc = "Open test output" })

vim.keymap.set("n", "<leader>tO", function()
  neotest.output_panel.open()
end, { desc = "Open test output panel" })

vim.keymap.set("n", "<leader>tS", function()
  neotest.summary.toggle()
end, { desc = "Toggle test summary" })

vim.keymap.set("n", "<leader>tw", function()
  neotest.watch.toggle(vim.fn.expand("%"))
end, { desc = "Toggle watch on current file" })

local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'gd', "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set('n', 'gD', "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
vim.keymap.set('n', 'gi', "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
vim.keymap.set('n', 'gt', "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)

-- Find links (where variable are used)
vim.keymap.set('n', 'gr', "<cmd>lua vim.lsp.buf.references()<CR>", opts)

-- Show information about definition
vim.keymap.set('n', 'K', "<cmd>lua vim.lsp.buf.hover()<CR>", opts)

-- Rename a variable through whole project
vim.keymap.set('n', '<leader>gr', "<cmd>lua vim.lsp.buf.rename()<CR>", opts)

-- Show the signature of a function
vim.keymap.set('n', '<leader>k', "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)

-- Format code
vim.keymap.set('n', '<leader>f', "<cmd>lua vim.lsp.buf.format()<CR>", opts)

-- Show the actions of the code
vim.keymap.set('n', '<leader>ca', "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

vim.keymap.set('n', '[d', function()
  vim.diagnostic.jump({ count = -1, float = true })
end, opts)

vim.keymap.set('n', ']d', function()
  vim.diagnostic.jump({ count = 1, float = true })
end, opts)
