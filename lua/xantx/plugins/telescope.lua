return {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
     dependencies = { 'nvim-lua/plenary.nvim' },
     event = "VeryLazy",
     config = function ()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>', { noremap = true })
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({search = vim.fn.input("Grep > ") });
      end)
     end
}
