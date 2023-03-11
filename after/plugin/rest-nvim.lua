local ok, rest_nvim = pcall(require, 'rest-nvim')

if not ok then
  return
end

rest_nvim.setup({
  result_split_horizontal = false,
  result_spli_in_place = false,
  skip_ssl_verification = false,
  highlight = {
    enabled = true,
    timeout = 150,
  },
  result = {
    show_url = true,
    show_http_info = true,
    show_header = true,
    formatters = {
      json = 'jq',
      html = function(body)
        return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
      end
    }
  },
  jump_to_request = false,
  env_file = '.env',
  custom_dynamic_variables = {},
  yank_dry_run = true,
})

