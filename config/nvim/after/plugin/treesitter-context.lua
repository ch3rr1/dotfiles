local nnoremap = require("ch3rr1.keymap").nnoremap

function ContextSetup(show_all_context)
	require("treesitter-context").setup({
		enable = true, -- Enable this plugin (can be enabled/disabled later via commands)
		may_lines = 0, -- How many lines the window should span (values <= 0 mean no limit)
		show_all_context = show_all_context,
		patterns = {
			default = {
				"function",
				"method",
				"for",
				"while",
				"if",
				"switch",
				"case"
			},
			typescript = {
				"class_declaration",
				"abstract_class_declaration",
				"else_clause"
			}
		}
	})
end

nnoremap("<leader>cf", function() ContextSetup(true) end)
nnoremap("<leader>cp", function() ContextSetup(false) end)
ContextSetup(false)
