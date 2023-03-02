function ColorMyPencil(color)
	vim.o.background = "dark"
    --rose-pine
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "SagaBorder", { bg = "none", fg="#665c54"  })
  if(color == 'gruvbox') then
    vim.api.nvim_set_hl(0, "GruvboxGreenSign", { fg="#b8bb26", bg = "none" })
    vim.api.nvim_set_hl(0, "GruvboxAquaSign", { fg="#8ec07c", bg = "none" })
    vim.api.nvim_set_hl(0, "GruvboxRedSign", { fg="#fb4934", bg = "none" })
    vim.api.nvim_set_hl(0, "GruvboxYellowSign", { fg="#fabd2f", bg = "none" })
    vim.api.nvim_set_hl(0, "GruvboxBlueSign", { fg="#83a598", bg = "none" })
    --Green guifg=#b8bb26 guibg=#3c3836
    --Aqua guifg=#8ec07c guibg=#3c3836
    --Red guifg=#fb4934 guibg=#3c3836
    --Yellow guifg=#fabd2f guibg=#3c3836
    --Blue guifg=#83a598 guibg=#3c3836
  end
  require 'colorizer'.setup()
end
--vim.cmd([[colorscheme gruvbox]])
--ColorMyPencil("rose-pine")
ColorMyPencil("gruvbox")

