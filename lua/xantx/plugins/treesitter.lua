return  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      init = function()
        -- disable rtp plugin, as we only need its queries for mini.ai
        -- In case other textobject modules are enabled, we will load them
        -- once nvim-treesitter is loaded
        require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textobjects")
        load_textobjects = true
      end,
    },
  },
  opts = {
    ensure_installed = {"javascript","typescript", "lua", "rust", "c", "cpp", "vim" , "sql", "markdown", "markdown_inline"},
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
}
