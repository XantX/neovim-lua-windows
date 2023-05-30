local ok, rust_tools = pcall(require, 'rust-tools')

if not ok then
  return
end

rust_tools.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<Leader>l", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
      vim.keymap.set("n", "<leader>,", function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
      end)
    end
  },
  tools = {
    hover_actions = {
      border = {
        { "╭", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╮", "FloatBorder" },
        { "│", "FloatBorder" },
        { "╯", "FloatBorder" },
        { "─", "FloatBorder" },
        { "╰", "FloatBorder" },
        { "│", "FloatBorder" },
      },
      max_width = nil,
      max_height = nil,
      auto_focus = true,
    },
  },
})
