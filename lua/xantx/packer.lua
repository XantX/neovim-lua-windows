vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'akinsho/toggleterm.nvim'
  use({
    "glepnir/lspsaga.nvim",
    branch = "main"
  })
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })
  use {
    'jose-elias-alvarez/null-ls.nvim'
  }
  use {
    "rest-nvim/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }
  use { 'alvarosevilla95/luatab.nvim', requires='kyazdani42/nvim-web-devicons' }
  use {
    'lewis6991/gitsigns.nvim',
  }
  use {
    "folke/zen-mode.nvim",
  }
  use {
    "norcalli/nvim-colorizer.lua"
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use {
      "vinnymeller/swagger-preview.nvim",
      run = "npm install -g swagger-ui-watcher",
  }
  use 'numToStr/Comment.nvim'
  use 'lervag/vimtex'
  use 'simrat39/rust-tools.nvim'
  use 'mfussenegger/nvim-dap'
end)
