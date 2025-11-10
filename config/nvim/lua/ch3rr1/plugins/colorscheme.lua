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
--             style = 'day',
--             transparent = true,
--             terminal_colors = true,
--         }
--     end,
-- }

-- return {
--     'ellisonleao/gruvbox.nvim',
--     priority = 1000, -- load before all the other start plugins
--     lazy = false,
--     opts = {
--         contrast = 'hard', -- can be "hard", "soft" or empty string
--         transparent_mode = true,
--     },
--     config = function(_, opts)
--         require('gruvbox').setup(opts)
--         vim.cmd 'colorscheme gruvbox'
--     end,
-- }

return {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.everforest_background = 'medium'
        vim.cmd.colorscheme 'everforest'
    end,
}

-- return {
--     'neanias/everforest-nvim',
--     version = false,
--     lazy = false,
--     priority = 1000, -- make sure to load this before all the other start plugins
--     -- Optional; default configuration will be used if setup isn't called.
--     config = function()
--         require('everforest').setup {
--             -- Your config here
--         }
--         vim.cmd.colorscheme 'everforest'
--     end,
-- }

-- return {
--     'rebelot/kanagawa.nvim',
--     as = 'kanagawa',
--     config = function()
--         local kanagawa = require 'kanagawa'
--         kanagawa.setup {
--             theme = 'wave',
--             background = {
--                 dark = 'dragon',
--                 light = 'lotus',
--             },
--         }
--         vim.cmd 'colorscheme kanagawa'
--     end,
-- }

-- return {
--     'rose-pine/neovim',
--     as = 'rose-pine',
--     config = function()
--         local rosepine = require 'rose-pine'
--         rosepine.setup {
--             variant = 'auto',
--             dark_variant = 'moon',
--             styles = {
--                 transparency = true,
--             },
--         }
--         vim.cmd 'colorscheme rose-pine'
--     end,
-- }

-- return {
--     'navarasu/onedark.nvim',
--     as = 'onedark',
--     priority = 1000,
--     config = function()
--         local onedark = require 'onedark'
--         onedark.setup {
--             style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--             term_colors = true,
--             transparent = true,
--         }
--         onedark.load()
--     end,
-- }

-- return {
--     'gbprod/nord.nvim',
--     as = 'nord',
--     config = function()
--         local nord = require 'nord'
--         nord.setup {
--             transparent = true,
--         }
--         vim.cmd.colorscheme 'nord'
--         -- Apply transparency to all relevant groups
--         local function set_transparent_background()
--             local groups = {
--                 'Normal',
--                 'NormalNC',
--                 'NormalFloat',
--                 'FloatBorder',
--                 'TelescopeNormal',
--                 'TelescopeBorder',
--                 'LazyNormal',
--                 'TroubleNormal',
--                 'Pmenu',
--             }
--
--             for _, group in ipairs(groups) do
--                 vim.api.nvim_set_hl(0, group, { bg = 'none' })
--             end
--         end
--
--         vim.api.nvim_create_autocmd('ColorScheme', {
--             pattern = '*',
--             callback = set_transparent_background,
--         })
--
--         set_transparent_background()
--     end,
-- }
