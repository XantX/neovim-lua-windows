return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = { 
    open_mapping = [[<c-\>]],
    direction = 'horizontal',
    shell = 'pwsh',
    float_opts = {
      border = "curved",
    },
  },
  keys = { {
    "<leader>th",
    "<cmd>ToggleTerm direction=horizontal <CR>",
    desc = "Open terminal"}
  }
}
