require("diegog")
require("diegog.remap")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.wrap = false

--tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.expandtab = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
--opt.termguicolors = true
--opt.background = "dark"
--opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

