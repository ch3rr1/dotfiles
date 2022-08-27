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

nnoremap("<leader>sv", ":wincmd v<CR>")
nnoremap("<leader>sh", ":wincmd s<CR>")

nnoremap("<leader>pv", ":Ex<CR>")

nnoremap("<leader>u", ":UndotreeToggle<CR>")
