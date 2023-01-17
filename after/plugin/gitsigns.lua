local ok, gitsings = pcall(require, 'gitsigns')

if not ok then
  return
end

gitsings.setup {
  signcolumn = true,
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = '[GitBlame] <author>, <author_time:%Y-%m-%d> - <summary>',
}
