local ok, lsp = pcall(require, 'lsp-zero')

if not ok then
  return
end
require('luasnip.loaders.from_snipmate').lazy_load()


lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'lua_ls',
})

lsp.set_preferences({
  sign_icons = {}
})


lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>,", function()
    vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
  end, opts)
end)

lsp.skip_server_setup({ 'rust_analyzer' })

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
})

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }
})
