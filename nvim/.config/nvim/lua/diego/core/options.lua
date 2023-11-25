local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- set nvim_treesitter to be used for code folding.
opt.foldmethod = "manual"
opt.foldexpr = "nvim_treesitter#foldexpr()"

-- line wrapping
opt.wrap = false

--tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.expandtab = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
