local ok, nvim_tree = pcall(require, 'nvim-tree')
if not ok then
  return
end
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
nvim_tree.setup({
  sort_by = "case_sensitive",
  disable_netrw = true,
  view = {
    adaptive_size = false,
  },
  renderer = {
    group_empty = false,
  },
  filters = {
    dotfiles = false,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    }
  }
})
