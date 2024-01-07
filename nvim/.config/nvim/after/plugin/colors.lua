require('catppuccin').setup({
    flavour = "macchiato",
    transparent_background = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
    },
})

function ColorMyPencils(color) 
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
