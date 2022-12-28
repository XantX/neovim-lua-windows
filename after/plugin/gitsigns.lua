local ok, gitsings = pcall(require, 'gitsigns')

if not ok then
  return
end

gitsings.setup {
  signcolumn = true
}
