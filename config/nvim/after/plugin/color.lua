vim.g.ch3rr1_colorscheme = "gruvbox"

function SetupColorScheme()
    -- vim.g.gruvbox_contrast_dark = "hard"
    -- vim.g.gruvbox_invert_selection = "0"
    vim.opt.background = "dark"

    vim.cmd("colorscheme " .. vim.g.ch3rr1_colorscheme)

    local hl = function(name, opts)
        vim.api.nvim_set_hl(0, name, opts)
    end

    hl("Normal", {
        bg = "none"
    })
    hl("EndOfBuffer", {
        bg = "none"
    })
    hl("SignColumn", {
        bg = "none"
    })
    hl("CursorLineNr", {
        bg = "none"
    })
    --[[
    hl("StatusLine", {
        bg = "none"
    })
    ]]--
    hl("VertSplit", {
        bg = "none"
    })

    hl("ColorColumn", {
        bg = "#664c45"
    })
    hl("LineNr", {
        fg = "#fabd2f"
    })
end

SetupColorScheme()
