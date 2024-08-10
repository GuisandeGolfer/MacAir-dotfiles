vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- for making files executable while editing:
keymap.set("n", "<leader>fx", ":!chmod +x %<CR")

-- general keymaps

keymap.set("i", "lk", "<ESC>") -- instead of hitting "CAPS-lock" which I changed in the OS settings,
-- you can hit "j" and "k" quickly in succession to escape insert mode.

keymap.set("n", "<leader>nh", ":nohl<CR>") -- the 'leader' is space, defined on line 1, and when you hit
-- space, h: nvim will clear out the search highlight results

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically, <space>s-plit v-ertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally, <space>s-plit h-orizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width, <space>s-plit e-qually
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- T-ab O-pen:open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- T-ab X-close: close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- T-ab N-ext: go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- T-ab P-revious: go to previous tab

-- tmux split window navigation --> CTRL + J (UP) + K (DOWN) + L(RIGHT) + H(LEFT)

-- nvimtree keymap open

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fl", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fg", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

-- Pomodoro.nvim re-map

keymap.set("n", "<leader>ms", "<cmd>PomodoroStart<cr>")
keymap.set("n", "<leader>mT", "<cmd>PomodoroStatus<cr>")
keymap.set("n", "<leader>mS", "<cmd>PomodoroStop<cr>")

-- Todo-Comments re-map

keymap.set("n", "<leader>dq", "<cmd>TodoQuickFix<cr>")
keymap.set("n", "<leader>dl", "<cmd>TodoLocList<cr>")
keymap.set("n", "<leader>dt", "<cmd>TodTelescope<cr>")

-- Nvim tips and trick
--
-- use 'shift + 3 AKA #' to highlight and search for word that your cursor is currently under.
-- you can use this with search and replace:
-- 1. use # on the current word that you are trying to replace across a file
-- 2. use ':%s/' and leave the search param blank and it will use the last one that you searched for.
-- 3. find the command with ':%s//taco/' this will replace the last think you searched for (with shift + 3) with the word taco
--
-- another tip for doing bulk edits
-- you can use visual mode to select a body of text
-- then go into command mode ":" hit space then 'norm'
-- everything you put after norm with be a command that is executed as if you were in normal mode and will apply the command to everything
-- selected in the text you highlighted in visual mode.
--
-- FOLDING
-- https://youtu.be/ovRqGybIg1Q?t=668 - tutorial on how folding works
