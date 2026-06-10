local neotest = require("neotest")

neotest.setup({
  adapters = {
    require("rustaceanvim.neotest"),
  },
})

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
