local ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end
nvim_treesitter.setup {
  ensure_installed = {"help", "javascript","typescript", "lua", "rust", "c", "cpp", "vim" },
  sync_install = false,
  auto_install = true,
  autotag = {
    enable = true,
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
