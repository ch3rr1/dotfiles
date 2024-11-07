local function map(op, outer_opts)
    outer_opts = outer_opts or { noremap = true }
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend('force', outer_opts, opts or {})
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

local nmap = map('n', { noremap = false })
local nnoremap = map 'n'
local vnoremap = map 'v'
local xnoremap = map 'x'
local inoremap = map 'i'

inoremap('<C-c>', '<Esc>')

nnoremap('<leader>h', ':wincmd h<CR>')
nnoremap('<leader>j', ':wincmd j<CR>')
nnoremap('<leader>k', ':wincmd k<CR>')
nnoremap('<leader>l', ':wincmd l<CR>')

nnoremap('<leader>sv', '<C-w>v')
nnoremap('<leader>sh', '<C-w>s')
nnoremap('<leader>se', '<C-w>=')
nnoremap('<leader>sx', ':close<CR>')

nnoremap('<C-d>', '<C-d>zz')
nnoremap('<C-u>', '<C-u>zz')

nnoremap('n', 'nzzzv')
nnoremap('N', 'Nzzzv')

nnoremap('<C-j>', ':cnext<CR>zz')
nnoremap('<C-k>', ':cprev<CR>zz')

nnoremap('x', '"_x')

-- Delete withoug yank
nnoremap('<leader>d', '"_d')
vnoremap('<leader>d', '"_d')

-- Paste without yank
xnoremap('<leader>p', '"_dP')

-- Shortcut for copying to system clipboard
nnoremap('<leader>y', '"+y')
vnoremap('<leader>y', '"+y')
nmap('<leader>Y', '"+Y')

vnoremap('J', ":m '>+1<CR>gv=gv")
vnoremap('K', ":m '<-2<CR>gv=gv")

nnoremap('<leader>+', '<C-a>')
nnoremap('<leader>-', '<C-x>')

nnoremap('<leader>pv', ':Ex<CR>')
nnoremap('<leader>u', ':UndotreeToggle<CR>')
nnoremap('<leader>t', ':TroubleToggle<CR>')
nnoremap('<leader>b', ':GitBlameToggle<CR>')
