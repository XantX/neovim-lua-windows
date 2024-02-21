return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    open_mapping = [[<c-\>]],
    direction = 'horizontal',
    float_opts = {
      border = "curved",
    },
  },
  keys = {
    {
      "<leader>th",
      "<cmd>ToggleTerm direction=horizontal <CR>",
      desc = "Open terminal"
    },
    {
      "<leader>tv",
      "<cmd>ToggleTerm direction=vertical size=100 <CR>",
      desc = "Open terminal"
    },
    {
      "<leader>tf",
      "<cmd>ToggleTerm direction=float <CR>",
      desc = "Open terminal"
    }
  }
}
