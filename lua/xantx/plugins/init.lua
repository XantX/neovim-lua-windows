return {
  { "folke/lazy.nvim", version = false },
  {
      'numToStr/Comment.nvim',
      lazy = false,
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
  'kylechui/nvim-surround',
  {'christoomey/vim-tmux-navigator', event = "VeryLazy"},
  'kyazdani42/nvim-web-devicons',
  {
     'NvChad/nvim-colorizer.lua',
     ft = { 'css', 'javascript', 'vim', 'html', 'lua' },
     opts = {},
   }
}
