return {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
     dependencies = { 'nvim-lua/plenary.nvim' },
     keys = {
       { '<leader>ff', function () require 'telescope.builtin'.find_files() end },
     },
     config = function ()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({search = vim.fn.input("Grep > ") });
      end)
      require("telescope").load_extension("noice")
     end
}
