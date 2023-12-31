local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree docs
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
	view = {
		number = true,
		relativenumber = true,
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
