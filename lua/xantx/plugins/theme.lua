return {
  "rose-pine/neovim",
  name = 'rose-pine',
  lazy=true,
  priority=1000,
  init = function ()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "SagaBorder", { bg = "none", fg="#665c54"  })
    vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none", fg="#665c54"  })
  end
}
