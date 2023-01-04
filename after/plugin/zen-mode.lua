local ok, zen_mode = pcall(require, 'zen-mode')

if not ok then
  return
end

zen_mode.setup {
    window = {
        width = 90,
        options = {
            number = true,
            relativenumber = true,
        }
    },
}

vim.keymap.set("n", "<leader>zz", function()
    zen_mode.toggle()
    vim.wo.wrap = false
end)
