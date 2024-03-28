return {
  "ryanmsnyder/toggleterm-manager.nvim",
  dependencies = {
    "akinsho/nvim-toggleterm.lua",
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- only needed because it's a dependency of telescope
  },
  config = function()
    local toggleterm_manager = require("toggleterm-manager")
    local actions = toggleterm_manager.actions
    require("toggleterm-manager").setup {
      titles = {
        prompt = "Pick Term",
        results = "Terminals"
      },
      mappings = { -- key mappings bound inside the telescope window
        n = {
          ["<CR>"] = { action = actions.toggle_term, exit_on_action = false }, -- toggles terminal open/closed
          ["<C-i>"] = { action = actions.create_term, exit_on_action = false }, -- creates a new terminal buffer
          ["<leader>tx"] = { action = actions.delete_term, exit_on_action = false }, -- deletes a terminal buffer
          ["<leader>tr"] = { action = actions.rename_term, exit_on_action = false }, -- provides a prompt to rename a terminal
        },
      }
    }
  end
}
