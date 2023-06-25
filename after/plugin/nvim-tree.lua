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
  auto_reload_on_write = true,
  view = {
    adaptive_size = false,
    side="right"
  },
  renderer = {
    group_empty = false,
  },
  filters = {
    dotfiles = false,
    git_clean = false,
  },
  git = {
    enable = true,
    ignore = false,
    show_on_dirs = true,
    show_on_open_dirs = true,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    }
  }
})
