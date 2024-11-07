-- return { -- You can easily change to a different colorscheme.
--     -- Change the name of the colorscheme plugin below, and then
--     -- change the command in the config to whatever the name of that colorscheme is
--     --
--     -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
--     'folke/tokyonight.nvim',
--     lazy = false, -- make sure we load this during startup if it is your main colorscheme
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--         -- Load the colorscheme here.
--         -- Like many other themes, this one has different styles, and you could load
--         -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
--         vim.cmd.colorscheme 'tokyonight-night'
--
--         -- You can configure highlights by doing something like
--         vim.cmd.hi 'Comment gui=none'
--
--         local tokyonight = require 'tokyonight'
--         tokyonight.setup {
--             style = 'night',
--             transparent = true,
--             terminal_colors = true,
--         }
--     end,
-- }

-- return {
--     'rose-pine/neovim',
--     as = 'rose-pine',
--     config = function()
--         vim.cmd 'colorscheme rose-pine'
--     end,
-- }

return {
    'navarasu/onedark.nvim',
    as = 'onedark',
    config = function()
        vim.cmd 'colorscheme onedark'
        local onedark = require 'onedark'
        onedark.setup {
            style = 'darker', -- or 'deep', 'cool', 'warm'
            terminal_colors = true,
        }
    end,
}
