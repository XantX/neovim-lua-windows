vim.g.mapleader = " "

vim.keymap.set('v','J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v','K', ":m '<-2<CR>gv=gv")

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('t', '<Esc>', '<C-\\><C-n>', opts)
-- Resize windows
map('n', '<M-j>', ':resize -2<CR>', opts)
map('n', '<M-k>', ':resize +2<CR>', opts)
map('n', '<M-h>', ':vertical resize -2<CR>', opts)
map('n', '<M-l>', ':vertical resize +2<CR>', opts)
map('n', '<leader>vs', ':vsp <CR>', opts)
map('n', '<leader>nt', ':NvimTreeToggle <CR>', opts)

map('n', '<leader>th', ':ToggleTerm direction=horizontal <CR>', opts)
map('n', '<leader>h', ':Telescope help_tags<CR>', opts)

--map('n', '<leader>ne', ':tabnext <CR>', opts)
--map('n', '<leader>pe', ':tabprevious <CR>', opts)
map('n', '<leader>ne', ':bnext<CR>', opts)
map('n', '<leader>pe', ':bprevious<CR>', opts)
map('n', '<leader>e', ':bdelete<CR>', opts)
