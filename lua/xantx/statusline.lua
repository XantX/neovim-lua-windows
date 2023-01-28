local function statusLine()
  local filePath = '%f'
  local modified = '%-m'
  --local branch = "  %{get(b:, 'gitsigns_head','')} "
  local gus = " %{get(b:, 'gitsigns_status', '')}"
  return string.format(
    "%s%s%s",
    filePath,
    modified,
    gus
  )
end
vim.opt.statusline = statusLine()
--vim.opt.statusline = "%<%f %m %h %r %w %{gitStats()} %= %q %y %n %l-%c %p%%"


--        • `added` - Number of added lines.
--        • `changed` - Number of changed lines.
--        • `removed` - Number of removed lines.
--        • `head` - Name of current HEAD (branch or short commit hash).
--        • `root` - Top level directory of the working tree.
--        • `gitdir` - .git directory.
--
--vim.o.statusline = '%<%f%h%m%r%=%b\\ 0x%B\\ \\ %l,%c%V\\ %P'
--vim.wo.statusline='%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P'
