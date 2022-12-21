local Remap = require("ch3rr1.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", ":lua require('telescope.builtin').git_files()<CR>")
nnoremap("<leader>pf", ":lua require('telescope.builtin').find_files({ hidden = true })<CR>")
nnoremap("<leader>pb", ":lua require('telescope.builtin').buffers()<CR>")
nnoremap("<leader>ph", ":lua require('telescope.builtin').help_tags()<CR>")
nnoremap("<leader>pg", ":lua require('telescope.builtin').live_grep()<CR>")
nnoremap("<leader>ps", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input(\"Grep For > \") })<CR>")
nnoremap("<leader>pw", ":lua require('telescope.builtin').grep_string({ search = vim.fn.expand(\"<cword>\") })<CR>")
nnoremap("<leader>prc", ":lua require('ch3rr1.telescope').nvim_config()<CR>")
