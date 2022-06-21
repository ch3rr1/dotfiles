vim.g.ch3rr1_colorscheme = "gruvbox"

function SetupColorScheme()
    vim.g.gruvbox_contrast_dark = "hard"
    vim.g.gruvbox_transparent_bg = 1
    vim.g.gruvbox_invert_selection = false
    -- vim.g.gruvbox_sign_column = "bg0"

    -- vim.g.tokyonight_transparent = true

    vim.opt.background = "dark"

    vim.cmd("colorscheme " .. vim.g.ch3rr1_colorscheme)

    local hl = function(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
    end

    hl("Normal", {
        bg = "none"
    })
    hl("EndOfBuffer", {
        bg = "none"
    })
    hl("SignColumn", {
        ctermbg = "none",
        bg = "none"
    })
    hl("CursorLineNr", {
        bg = "none"
    })
    hl("VertSplit", {
        bg = "none"
    })
    --[[
    hl("StatusLine", {
        bg = "none"
    })
    ]]

    --[[ hl("LspDiagnosticsSignError", {
        bg = "none",
        fg = "#ffffff"
    })
    hl("LspDiagnosticsSignWarning", {
        bg = "none"
    })
    hl("LspDiagnosticsSignHint", {
        bg = "none"
    })
    hl("LspDiagnosticsSignInformation", {
        bg = "none"
    }) ]]

    --[[ hl("ColorColumn", {
        bg = "#664c45"
    })
    hl("LineNr", {
        fg = "#fabd2f"
    }) ]]
end

SetupColorScheme()
