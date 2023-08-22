return {
  'lewis6991/gitsigns.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  config = function()
      local ok, gitsings = pcall(require, 'gitsigns')
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      if not ok then
        return
      end
      map('n', '<leader>tb', ':Gitsigns toggle_current_line_blame <CR>', opts)
      map('n', '<leader>tsb', ':Gitsigns blame_line <CR>', opts)

      gitsings.setup {
        signcolumn = true,
        current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
          delay = 1000,
          ignore_whitespace = false,
        },
        current_line_blame_formatter = '[GitBlame] <author>, <author_time:%Y-%m-%d> - <summary>',
      }
  end,
  event = { 'BufReadPre', 'BufNewFile' },
}
