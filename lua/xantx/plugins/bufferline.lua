return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
    { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
  },
  config = function ()
    local definedBgSelected = "#ebbcba"
    local definedFgSelected = "#1f1d2e"
    require('bufferline').setup({
      highlights = {
          buffer_selected = {
              fg = definedFgSelected,
              bg = definedBgSelected,
              bold = true,
              italic = true,
          },
          tab_separator_selected = {
              fg = definedFgSelected,
              bg = definedBgSelected,
          },
          close_button_selected = {
              fg = definedFgSelected,
              bg = definedBgSelected,
          },
          diagnostic_selected = {
              fg = definedFgSelected,
              bg = definedBgSelected,
              bold = true,
              italic = true,
          },
          hint_selected = {
              fg = definedFgSelected,
              bg = definedBgSelected,
              bold = true,
              italic = true,
          },
          info_selected = {
              fg = definedFgSelected,
              bg = definedBgSelected,
              bold = true,
              italic = true,
          },
          separator_selected = {
              fg = definedFgSelected,
              bg = definedBgSelected,
          },
          indicator_selected = {
              fg = definedFgSelected,
              bg = definedBgSelected,
          },
          offset_separator = {
              fg = definedFgSelected,
              bg = definedBgSelected,
          },
      },
      options = {
        diagnostics = "nvim_lsp",
        always_show_bufferline = true,
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    })
  end
}
