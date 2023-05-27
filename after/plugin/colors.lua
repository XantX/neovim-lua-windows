function ColorMyPencil(color)
	vim.o.background = "dark"
    --rose-pine
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "SagaBorder", { bg = "none", fg="#665c54"  })
	vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none", fg="#665c54"  })
  if(color == 'gruvbox') then
    vim.api.nvim_set_hl(0, "GruvboxGreenSign", { fg="#b8bb26", bg = "none" })
    vim.api.nvim_set_hl(0, "GruvboxAquaSign", { fg="#8ec07c", bg = "none" })
    vim.api.nvim_set_hl(0, "GruvboxRedSign", { fg="#fb4934", bg = "none" })
    vim.api.nvim_set_hl(0, "GruvboxYellowSign", { fg="#fabd2f", bg = "none" })
    vim.api.nvim_set_hl(0, "GruvboxBlueSign", { fg="#83a598", bg = "none" })
  end
  require 'colorizer'.setup()
end
--vim.cmd([[colorscheme gruvbox]])
ColorMyPencil("rose-pine")
--ColorMyPencil("gruvbox")

