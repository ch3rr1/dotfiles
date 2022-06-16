vim.g.mapleader = " "

local M = {}

function M.nnoremap(lhs, rhs)
    vim.keymap.set("n", lhs, rhs, {noremap = true})
end

local nnoremap = M.nnoremap

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<leader>u", ":UndotreeToggle<CR>")
