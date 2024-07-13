return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      open_mapping = [[<c-\>]],
      direction = "horizontal",
      shell = "pwsh",
      float_opts = {
        border = "curved",
      },
    },
    keys = {
      {
        "<leader>th",
        "<cmd>ToggleTerm direction=horizontal <CR>",
        desc = "Open horizontal terminal",
      },
      {
        "<leader>tv",
        "<cmd>ToggleTerm direction=vertical <CR>",
        desc = "Open vertical terminal",
      },
      {
        "<leader>tf",
        "<cmd>ToggleTerm direction=float <CR>",
        desc = "Open float terminal",
      },
    },
  },
}
