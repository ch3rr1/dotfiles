local nvim_lsp = require("lspconfig")
local util = require("lspconfig/util")

local nnoremap = require("ch3rr1.keymap").nnoremap

-- Not sure what this does yet
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippedSupport = true

local function config(_config)
    return vim.tbl_deep_extend("force", {
        capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
        on_attach = function()
            nnoremap("K", function() vim.lsp.buf.hover() end)
            nnoremap("gd", function() vim.lsp.buf.definition() end)
            nnoremap("<leader>vi", function() vim.lsp.buf.implementation() end)
            nnoremap("<leader>vrr", function() vim.lsp.buf.references() end)
            nnoremap("<leader>vca", function() vim.lsp.buf.code_action() end)
            nnoremap("<leader>vrn", function() vim.lsp.buf.rename() end)
            nnoremap("<C-h>", function() vim.lsp.buf.signature_help() end)
        end
    }, _config or {})
end

nvim_lsp.eslint.setup(config())

nvim_lsp.flow.setup(config({
    root_dir = util.root_pattern(".flowconfig")
}))

nvim_lsp.gopls.setup(config())

nvim_lsp.jedi_language_server.setup(config())

nvim_lsp.lua_ls.setup(config({
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = {'vim'},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			}
		}
	}
}));

nvim_lsp.tsserver.setup(config({
    root_dir = util.root_pattern("tsconfig.json")
}))

nvim_lsp.rust_analyzer.setup(config())

nvim_lsp.vuels.setup(config())

-- nvim_lsp.volar.setup(config({
--   filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
-- }))
