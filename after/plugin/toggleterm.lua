local ok, toggleterm = pcall(require, 'toggleterm')
if not ok then
  return
end
toggleterm.setup({
  open_mapping = [[<c-\>]],
  direction = 'horizontal',
  shell = 'pwsh',
  float_opts = {
    border = "curved",
  },
})
