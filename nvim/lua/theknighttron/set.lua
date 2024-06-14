vim.opt.guicursor = ""
vim.opt.guifont= "JetBrainsMono"


vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.title = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.wrap = false

vim.opt.shell = "zsh"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath('cache') .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.ignorecase = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5


vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' }  -- Finding file - Search down into subfolders


vim.opt.clipboard = 'unnamedplus'
vim.opt.path:append("**")
vim.opt.wildignore:append{ "*/node_modules/*" }

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "160"

vim.g.mapleader = " "
