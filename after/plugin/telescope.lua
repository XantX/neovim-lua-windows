
local ok, builtin = pcall(require, 'telescope.builtin')

require('telescope').load_extension 'file_browser'

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>', { noremap = true })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") });
end)
