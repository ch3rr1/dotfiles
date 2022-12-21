local ok, neogit = pcall(require, "neogit")

if not ok then
	return
end

local nnoremap = require("ch3rr1.keymap").nnoremap

neogit.setup({})

nnoremap("<leader>gs", function()
    neogit.open({
        kind = "split_above"
    })
end)

nnoremap("<leader>gf", "<cmd>!git fetch --all<CR>")
