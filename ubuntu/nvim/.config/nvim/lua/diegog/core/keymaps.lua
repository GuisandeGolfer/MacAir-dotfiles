vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "lk", "<ESC>", { desc = "exit insert mode with lk"})

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "clear search highlights"})

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "increment number"})
keymap.set("n", "<leader>-", "<C-x>", { desc = "decrement number"})


keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split windows vertically"})
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split windows horizontally"})
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make splits equal size"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current split"})


keymap.set("i", "lk", "<Esc>")

-- show this file for keymap help

keymap.set("n", "<leader>h", ":tabnew nvim/.config/nvim/lua/diegog/core/keymaps.lua<CR>")

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

keymap.set("n", "<leader>o", "!open %<CR>")

keymap.set("n", "<leader>fx", ":!chmod +x %<CR>")

keymap.set("n", "<leader>to", ":tabnew<CR>") -- T-ab O-pen:open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- T-ab X-close: close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- T-ab N-ext: go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- T-ab P-revious: go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>") -- open current buffer in a new tab.

-- FTerm
-- keymap.set("n", "<leader>tt", ":lua require('FTerm').toggle()<CR>", {noremap=true})

