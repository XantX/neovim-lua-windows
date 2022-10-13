require 'colorizer'.setup()
vim.o.background = "dark" -- or "light" for light mode

require("gruvbox").setup({
    overrides = {
        SignColumn = { bg = "none" },
        Normal = { bg = "none" },
        NormalFloat = { bg = "none" },
        GruvboxYellowSign = { bg = "none" },
        GruvboxBlueSign = { bg = "none" },
        GruvboxRedSign = { bg = "none" },
        GruvboxAquaSign = { bg = "none" },
        GruvboxGreenSign = { bg = "none" }
    }
})

require("notify").setup({
  background_colour = "#000000",
})

vim.cmd("colorscheme gruvbox")
