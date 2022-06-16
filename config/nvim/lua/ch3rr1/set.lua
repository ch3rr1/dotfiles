-- vim.opt.encoding = "utf-8"

vim.opt.termguicolors = true
vim.opt.guicursor = ""

vim.opt.errorbells = false
vim.opt.hidden = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true
vim.opt.hlsearch = false
-- vim.opt.ignorecase = true
-- vim.opt.smartcast = true

vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
-- vim.opt.cursorline = true

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Something for better mono repo experience.
vim.opt.isfname:append("@-@")

-- Shorter updatetime (default is 4000 ms) leads to less delays.
vim.opt.updatetime = 50

-- Don't pass message to |ins-completion-menu|.
vim.opt.shortmess:append("c")

-- vim.opt.clipboard = "unnamedplus"
-- vim.opt.completeopt = "menu,menuone,noselect"
