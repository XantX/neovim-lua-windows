return {
  "folke/zen-mode.nvim",
   keys = {
     { 
       '<leader>zz',
       '<cmd>ZenMode<CR>',
       desc = "Enable ZenMode"},
   },
   opts = {
      plugins = {
        options = {
          enabled = true,
          ruler = false,
          showcmd = false,
          laststatus = 0, -- turn off the statusline in zen mode
        },
        twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
        gitsigns = { enabled = true }, -- disables git signs
        alacritty = {
          enabled = true,
          font = "14",
        },
      },
    }
}
