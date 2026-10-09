vim.pack.add({
  { src = "https://github.com/Exafunction/windsurf.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/hrsh7th/nvim-cmp" },
})

require("codeium").setup({
  enable_cmp_source = false,
  virtual_text = {
    enabled = true,
    key_bindings = {
      accept = "<C-g>",
      accept_word = "<S-Tab>",
      accept_line = "<M-Tab>",
      next = "<C-;>",
      prev = "<C-,>",
      clear = "<C-x>",
    }
  }
})

vim.pack.add({
  { src = "https://github.com/folke/tokyonight.nvim" },
})

require("tokyonight").setup({
  on_colors = function(colors)
    colors.bg = colors.none
  end;
  on_highlights = function(hl)
    hl.LineNr = { fg = "#C0CAF5", bold = true }
    hl.LineNrAbove = { fg = "#737AA2" }
    hl.LineNrBelow = { fg = "#737AA2" }
    hl.CursorLineNr = { fg = "#FF9E64", bold = true }
  end,
})

vim.pack.add({
  { src = "https://github.com/mason-org/mason.nvim" },
})

require("mason").setup({})

vim.pack.add({
  { src = "https://github.com/nvim-lualine/lualine.nvim" },
})

require('lualine').setup({
  options = {
    theme = 'dracula-nvim',
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '', right = ' ' }, right_padding = 2 } },
    lualine_b = { { 'filename', separator = { left = '' } } },
    lualine_c = {
      { 'branch', icon = '| ' },
      {
        'diff',
        colored = true,
        diff_color = {
          added    = { fg = '#28A745' },
          modified = { fg = '#DBAB09' },
          removed  = { fg = '#D73A49' }
        },
        symbols = {
          added    = ' ',
          modified = ' ',
          removed  = ' '
        }
      }
    },
    lualine_x = {
      {
        "diagnostics",
        sources = { "nvim_lsp" },
        sections = { "error", "warn", "info", "hint" },
        diagnostics_color = {
          error = { fg = '#D73A49' },
          warn  = { fg = '#DBAB09' },
          info  = { fg = '#0087AF' },
          hint  = { fg = '#28A745' }
        },
        symbols = {
          error = '| error ',
          warn = '| warn ',
          info = '| info ',
          hint = '| hint ',
        }
      }
    },
    lualine_y = { 'filetype', 'progress' },
    lualine_z = { { 'location', separator = { right = '', left = ' ' }, left_padding = 2 } },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = { 'branch', 'diff', 'diagnostics' },
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
})

vim.pack.add({
  { src = "https://github.com/ibhagwan/fzf-lua" },
})

local actions = require('fzf-lua.actions')
require('fzf-lua').setup({
  winopts = { backdrop = 85 },
  keymap = {
    builtin = {
      ["<C-f>"] = "preview-page-down",
      ["<C-b>"] = "preview-page-up",
      ["<C-p>"] = "toggle-preview",
    },
    fzf = {
      ["ctrl-a"] = "toggle-all",
      ["ctrl-t"] = "first",
      ["ctrl-g"] = "last",
      ["ctrl-d"] = "half-page-down",
      ["ctrl-u"] = "half-page-up",
    }
  },
  actions = {
    files = {
      ["ctrl-q"] = actions.file_sel_to_qf,
      ["ctrl-n"] = actions.toggle_ignore,
      ["ctrl-h"] = actions.toggle_hidden,
      ["enter"]  = actions.file_edit_or_qf,
    }
  }
})

vim.pack.add({
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") },
})

require('blink.cmp').setup({
  fuzzy = { implementation = 'prefer_rust_with_warning' },
  signature = { enabled = true },
  keymap = {
    preset = "default",
    ["<C-space>"] = {},
    ["<C-p>"] = {},
    ["<Tab>"] = {},
    ["<S-Tab>"] = {},
    ["<C-y>"] = { "show", "show_documentation", "hide_documentation" },
    ["<C-n>"] = { "select_and_accept" },
    ["<C-k>"] = { "select_prev", "fallback" },
    ["<C-j>"] = { "select_next", "fallback" },
    ["<C-b>"] = { "scroll_documentation_down", "fallback" },
    ["<C-f>"] = { "scroll_documentation_up", "fallback" },
    ["<C-l>"] = { "snippet_forward", "fallback" },
    ["<C-h>"] = { "snippet_backward", "fallback" },
    -- ["<C-e>"] = { "hide" },
  },

  appearance = {
    use_nvim_cmp_as_default = true,
    nerd_font_variant = "normal",
  },

  completion = {
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 200,
    }
  },

  cmdline = {
    keymap = {
      preset = 'inherit',
      ['<CR>'] = { 'accept_and_enter', 'fallback' },
    },
  },

  sources = { default = { "lsp" } }
})

vim.pack.add({
  { src = "https://github.com/tpope/vim-fugitive" }
})

vim.pack.add({
  { src = "https://github.com/ryanoasis/vim-devicons" }
})

vim.pack.add({
  { src = "https://github.com/lewis6991/gitsigns.nvim" }
})

require("gitsigns").setup({
  signs                        = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signs_staged                 = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
  signs_staged_enable          = true,
  signcolumn                   = true,  -- Toggle with `:Gitsigns toggle_signs`
  numhl                        = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl                       = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff                    = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir                 = {
    follow_files = true
  },
  auto_attach                  = true,
  attach_to_untracked          = false,
  current_line_blame           = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts      = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
    virt_text_priority = 100,
    use_focus = true,
  },
  current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
  sign_priority                = 6,
  update_debounce              = 100,
  status_formatter             = nil,   -- Use default
  max_file_length              = 40000, -- Disable if file is longer than this (in lines)
  preview_config               = {
    -- Options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
})

vim.pack.add({
  { src = "https://github.com/kylechui/nvim-surround" }
})

vim.pack.add({
  { src = "https://github.com/theprimeagen/harpoon" }
})

vim.pack.add({
  { src = "https://github.com/mrcjkb/rustaceanvim" }
})

vim.pack.add({
  { src = "https://github.com/mfussenegger/nvim-dap" }
})

vim.pack.add({
  { src = "https://github.com/nvim-neotest/neotest" }
})

require("neotest").setup({
  adapters = {
    require("rustaceanvim.neotest"),
  },
})
