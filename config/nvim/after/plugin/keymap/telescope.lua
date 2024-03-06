local Remap = require("ch3rr1.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", ":lua require('telescope.builtin').git_files()<CR>")
nnoremap("<leader>ff", ":lua require('telescope.builtin').find_files({ hidden = true })<CR>")
nnoremap("<leader>fb", ":lua require('telescope.builtin').buffers()<CR>")
nnoremap("<leader>fh", ":lua require('telescope.builtin').help_tags()<CR>")
nnoremap("<leader>fg", ":lua require('telescope.builtin').live_grep()<CR>")
nnoremap("<leader>fs", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input(\"Grep For > \") })<CR>")
nnoremap("<leader>fw", ":lua require('telescope.builtin').grep_string({ search = vim.fn.expand(\"<cword>\") })<CR>")
nnoremap("<leader>frc", ":lua require('ch3rr1.telescope').nvim_config()<CR>")
