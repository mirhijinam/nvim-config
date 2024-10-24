vim.cmd [[colorscheme darcula-solid]]

vim.opt.nu = true
vim.opt.relativenumber = true

-- blinking cursor in insert mode
-- Read the current value of 'guicursor'
local current_guicursor = vim.o.guicursor

-- Append the new setting for Insert mode
vim.o.guicursor = current_guicursor .. ',i:ver25-blinkwait700-blinkon400-blinkoff250'

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

