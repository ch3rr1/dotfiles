vim.g.mapleader = " "

local M = {}

function M.nnoremap(lhs, rhs)
    vim.keymap.set("n", lhs, rhs, {noremap = true})
end

local nnoremap = M.nnoremap

nnoremap("<leader>pv", ":Ex<CR>")

nnoremap("<leader>u", ":UndotreeToggle<CR>")

nnoremap("<C-p>", ":lua require('telescope.builtin').git_files()<CR>")
nnoremap("<leader>pf", ":lua require('telescope.builtin').find_files()<CR>")
nnoremap("<leader>pb", ":lua require('telescope.builtin').buffers()<CR>")
nnoremap("<leader>ph", ":lua require('telescope.builtin').help_tags()<CR>")
nnoremap("<leader>pg", ":lua require('telescope.builtin').live_grep()<CR>")
nnoremap("<leader>ps", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input(\"Grep For > \") })<CR>")
nnoremap("<leader>pw", ":lua require('telescope.builtin').grep_string({ search = vim.fn.expand(\"<cword>\") })<CR>")
