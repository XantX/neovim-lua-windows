return {
  'jose-elias-alvarez/null-ls.nvim',
  event = "VeryLazy",
  opts = function ()
    local null_ls = require('null-ls')
    local opts = {
      source = {
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.formatting.prettier,
      },
    }
  end
}
