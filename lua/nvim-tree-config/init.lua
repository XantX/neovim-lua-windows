require("nvim-tree").setup { -- BEGIN_DEFAULT_OPTS
  auto_reload_on_write = true,
  renderer = {
    group_empty = true,
    highlight_git = true,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
    remove_file = {
      close_window = true,
    },
  },
  git = {
    enable = true,
    ignore = false,
    show_on_dirs = true,
  },
} -- END_DEFAULT_OPTS
