
local okMark, mark = pcall(require,"harpoon.mark" )
if not okMark then
  return
end

local okUi, ui = pcall(require, "harpoon.ui")

if not okUi then
  return
end

vim.keymap.set("n","<leader>a", mark.add_file)
vim.keymap.set("n","<C-e>", ui.toggle_quick_menu)

--vim.keymap.set("n","<C-h>", function() ui.nav_file(1) end)
--vim.keymap.set("n","<C-t>", function() ui.nav_file(2) end)
--vim.keymap.set("n","<C-n>", function() ui.nav_file(3) end)
--vim.keymap.set("n","<C-s>", function() ui.nav_file(4) end)

