-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'j-hui/fidget.nvim'
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({

      })
    end
  })
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('ryanoasis/vim-devicons')
  use('lewis6991/gitsigns.nvim')

  use {
    'mrcjkb/rustaceanvim',
  }

  use 'mfussenegger/nvim-dap'

  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
    }
  }

  use('Mofiqul/dracula.nvim')

  -- gcc	Нормальный	Закомментировать / раскомментировать текущую строку.
  -- gc	Визуальный	Выделите нужные строки и нажмите gc, чтобы переключить для них комментарий.
  -- gbc	Нормальный	Закомментировать строку с помощью блочного комментария (например, /* */ вместо //).
  -- gb	Визуальный	То же, что и выше, но для выделенного блока кода.
  -- gc (потом движение)	Ожидание оператора	Работает как с движениями (gcw — до конца слова), так и с текстовыми объектами (gcip — внутри абзаца).
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    requires = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    }
  }
end)
