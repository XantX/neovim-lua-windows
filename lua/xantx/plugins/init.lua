return {
  {
    'nvim-java/nvim-java',
    dependencies = {
      'nvim-java/lua-async-await',
      'nvim-java/nvim-java-core',
      'nvim-java/nvim-java-test',
      'nvim-java/nvim-java-dap',
      'MunifTanjim/nui.nvim',
      'neovim/nvim-lspconfig',
      'mfussenegger/nvim-dap',
      {
        'williamboman/mason.nvim',
        opts = {
          registries = {
            'github:nvim-java/mason-registry',
            'github:mason-org/mason-registry',
          },
        },
      }
    },
  },
  { "folke/lazy.nvim", version = false },
  {
      'numToStr/Comment.nvim',
      event = { "BufReadPre", "BufNewFile"},
      config = true
  },
  {
    'wakatime/vim-wakatime',
    event = "VeryLazy",
  },
  {
    'windwp/nvim-autopairs',
    opts = {
      enable_check_bracket_line = false,
      ignored_next_char = '[%w%.]',
      fast_wrap = {},
    },
    event = 'BufReadPost',
  },
  'windwp/nvim-ts-autotag',
  {
      "kylechui/nvim-surround",
      version = "*",
      event = "VeryLazy",
      config = function()
          require("nvim-surround").setup({})
      end
  },
  {'christoomey/vim-tmux-navigator', event = "VeryLazy"},
  'kyazdani42/nvim-web-devicons',
  {
     'NvChad/nvim-colorizer.lua',
     ft = { 'css', 'javascript', 'vim', 'html', 'lua', 'typescript'},
     opts = {},
  },
  {
    "j-hui/fidget.nvim",
    opts = {
      notification = {
        window = {
          normal_hl = "NormalNC",      -- Base highlight group in the notification window
          winblend = 0,             -- Background color opacity in the notification window
          border = "none",            -- Border around the notification window
          align = "bottom",           -- How to align the notification window
        },
      },
      integration = {
        ["nvim-tree"] = {
          enable = true,              -- Integrate with nvim-tree/nvim-tree.lua (if installed)
        },
      },
    },
  }
}
