local Remap = require("ch3rr1.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

inoremap("<C-c>", "<Esc>")

nnoremap("<leader>h", ":wincmd h<CR>")
nnoremap("<leader>j", ":wincmd j<CR>")
nnoremap("<leader>k", ":wincmd k<CR>")
nnoremap("<leader>l", ":wincmd l<CR>")

nnoremap("<leader>sv", "<C-w>v")
nnoremap("<leader>sh", "<C-w>s")
nnoremap("<leader>se", "<C-w>=")
nnoremap("<leader>sx", ":close<CR>")

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

nnoremap("<C-j>", ":cnext<CR>zz")
nnoremap("<C-k>", ":cprev<CR>zz")

nnoremap("x", '"_x')

-- Paste without yank
xnoremap("<leader>p", "\"_dP")

-- Shortcut for copying to system clipboard
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("<leader>+", "<C-a>")
nnoremap("<leader>-", "<C-x>")

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<leader>u", ":UndotreeToggle<CR>")
nnoremap("<leader>t", ":TroubleToggle<CR>")
nnoremap("<leader>b", ":GitBlameToggle<CR>")
