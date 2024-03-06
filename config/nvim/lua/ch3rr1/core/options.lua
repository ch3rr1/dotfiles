vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true

vim.g.have_nerd_font = false
vim.opt.showmode = false
vim.opt.clipboard = 'unnamedplus'
vim.opt.breakindent = true

vim.opt.termguicolors = true
-- vim.opt.guicursor = ""

vim.opt.errorbells = false
vim.opt.hidden = true
vim.opt.scrolloff = 8
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"
-- vim.opt.colorcolumn = "80"
-- vim.opt.cursorline = true

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Something for better mono repo experience.
vim.opt.isfname:append("@-@")

-- Shorter updatetime (default is 4000 ms) leads to less delays.
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Don't pass message to |ins-completion-menu|.
vim.opt.shortmess:append("c")

-- Set global status line
vim.opt.laststatus = 3

-- vim.opt.clipboard = "unnamedplus"
-- vim.opt.completeopt = "menu,menuone,noselect"

-- vim.opt.winbar = "%f %m"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
