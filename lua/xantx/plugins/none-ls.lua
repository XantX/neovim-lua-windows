return {
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  opts = function()
    local null_ls = require('null-ls')
    local opts = {
      sources = {
        null_ls.builtins.formatting.prettierd,
      }
    }
    return opts
  end
}
