vim.g.ch3rr1_colorscheme = "gruvbox"

local function defaultSetup()
    -- vim.g.gruvbox_contrast_dark = "hard"
    -- vim.g.gruvbox_transparent_bg = 1
    -- vim.g.gruvbox_invert_selection = false
    -- vim.g.gruvbox_sign_column = "bg0"
    -- vim.g.tokyonight_transparent = true

    local hl = function(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
    end

    hl("Normal", {
        bg = "none"
    })
    hl("NormalFloat", {
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
    hl("StatusLine", {
        bg = "none"
    })
    -- hl("ColorColumn", {
    --     bg = "#664c45"
    -- })
    -- hl("LineNr", {
    --     fg = "#fabd2f"
    -- })
end

local function gruvboxSetup()
	require("gruvbox").setup({
		contrast = "hard",
		overrides = {
			Normal = {
				bg = "none"
			},
			SignColumn = {
				bg = "none"
			},
			VertSplit = {
				bg = "none"
			},
			DiagnosticSignError = {
				bg = "none",
				fg = "#fb4934"
			},
			DiagnosticSignWarn = {
				bg = "none",
				fg = "#fabd2f"
			},
			DiagnosticSignInfo = {
				bg = "none",
				fg = "#83a598"
			},
			DiagnosticSignHint = {
				bg = "none",
				fg = "#8ec07c"
			}
		}
	})
end

local colorSchemes = {
	["gruvbox"] = gruvboxSetup
}

function SetupColorScheme(color)
	color = color or "rose-pine"

	-- vim.opt.background = "dark"

	local setupFunction = colorSchemes[color]
	if setupFunction then
		setupFunction()
	else
		defaultSetup()
	end

	vim.cmd("colorscheme " .. vim.g.ch3rr1_colorscheme)
end

SetupColorScheme(vim.g.ch3rr1_colorscheme)


