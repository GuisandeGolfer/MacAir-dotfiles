-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically, <space>s-plit v-ertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally, <space>s-plit h-orizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width, <space>s-plit e-qually
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
vim.keymap.set("n", "<leader>sm", "<C-w>|") -- maximize current split window width

vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- T-ab O-pen:open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- T-ab X-close: close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- T-ab N-ext: go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- T-ab P-revious: go to previous tab
