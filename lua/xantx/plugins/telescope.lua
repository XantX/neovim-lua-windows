return {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
     dependencies = { 
       'nvim-lua/plenary.nvim',
       "Snikimonkd/telescope-git-conflicts.nvim"
     },
     keys = {
       { '<leader>ff', function () require 'telescope.builtin'.find_files() end },
     },
     config = function ()
      require("telescope").setup({})
      require("telescope").load_extension("noice")
      require("telescope").load_extension("conflicts")
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({search = vim.fn.input("Grep > ") });
      end)
     end
}
