local nvim_lsp = require("lspconfig")

local nnoremap = require("ch3rr1.keymap").nnoremap

local function config(_config)
    return vim.tbl_deep_extend("force", {
        on_attach = function()
            nnoremap("K", ":lua vim.lsp.buf.hover()<CR>")
        end
    }, _config or {})
end

nvim_lsp.eslint.setup(config())

nvim_lsp.gopls.setup(config())

local sumneko_root_path = os.getenv("HOME") .. "/Sources/lua-language-server"
local sumneko_binary = sumneko_root_path .. "/bin/lua-language-server"
nvim_lsp.sumneko_lua.setup(config({
    cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = vim.split(package.path, ";")
            },
            diagnostics = {
                globals = { "vim" }
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
                }
            }
        }
    }
}))

nvim_lsp.tsserver.setup(config())
