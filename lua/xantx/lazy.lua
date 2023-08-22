return require('lazy').setup('xantx.plugins', {
  checker = { enabled = true, notify = false },
  ui = {
    border = "rounded",
  },
  performance = {
    cache = { enabled = true },
    rtp = {
      disabled_plugins = {
        'gzip',
        'matchit',
        'matchparen',
        'netrwPlugin',
        'rplugin',
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
      },
    },
  },
})
