return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css"
      },
    },
  },
  {
    "onsails/lspkind.nvim",
    lazy = false
  },
  {
    "L3MON4D3/LuaSnip",
    lazy = false,
    version = "v2.*",
    build = "make install_jsregexp"
  },
  {
    'stevearc/conform.nvim',
    lazy = false,
    opts = {},
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = false
  },
  {
    {
      'nvim-lualine/lualine.nvim',
      lazy = false,
      dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {} -- your configuration
  },
  {
    "olrtg/nvim-emmet",
    lazy = false,
    config = function()
      vim.keymap.set({ "n", "v" }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
    end,
  },
}
