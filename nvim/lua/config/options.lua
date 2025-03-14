vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.showmatch = true

vim.opt.ignorecase = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.errorbells = false
vim.opt.ttyfast = true
vim.opt.hidden = true
vim.opt.wrap = false

vim.opt.updatetime = 100
vim.opt.shortmess:append "c"
vim.opt.scrolloff = 8

vim.opt.history = 8192

vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("config") .. "/undodir"
vim.opt.swapfile = false

vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
