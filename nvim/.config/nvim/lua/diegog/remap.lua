vim.g.mapleader = " "

vim.keymap.set("i", "lk", "<Esc>")

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)


vim.keymap.set("n", "<leader>o", "!open %<CR>")

vim.keymap.set("n", "<leader>fx", ":!chmod +x %<CR>")

vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- change background image of iTerm2
vim.keymap.set("n", "<leader>tb", ":lua ChangeBackground()<CR>")

-- C++ keymaps
vim.keymap.set("n", "<leader>cc", ":!gcc % -o %.exe<CR>")

-- Toggle current line or with count
vim.keymap.set('n', 'gcc', function()
	return vim.v.count == 0
	and '<Plug>(comment_toggle_linewise_current)'
	or '<Plug>(comment_toggle_linewise_count)'
end, { expr = true })

-- Toggle in Op-pending mode
vim.keymap.set('n', 'gc', '<Plug>(comment_toggle_linewise)')

-- Toggle in VISUAL mode
vim.keymap.set('x', 'gc', '<Plug>(comment_toggle_linewise_visual)')

vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically, <space>s-plit v-ertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally, <space>s-plit h-orizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width, <space>s-plit e-qually
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- T-ab O-pen:open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- T-ab X-close: close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- T-ab N-ext: go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- T-ab P-revious: go to previous tab

-- tmux split window navigation --> CTRL + J (UP) + K (DOWN) + L(RIGHT) + H(LEFT)
