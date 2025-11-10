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
		-- contrast = "hard",
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

local function rosepineSetup()
	require('rose-pine').setup({
	--- @usage 'main' | 'moon'
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = true,
	disable_italics = false,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		panel = 'surface',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	highlight_groups = {
		ColorColumn = { bg = 'rose' }
	}
})

end

local colorSchemes = {
	["gruvbox"] = gruvboxSetup,
	["rose-pine"] = rosepineSetup
}

function SetupColorScheme(color)
	color = color or "rose-pine"

	-- vim.opt.background = "dark"

	local setupFunction = colorSchemes[color]
	if setupFunction then
		setupFunction()
		vim.cmd("colorscheme " .. color)
	else
		vim.cmd("colorscheme " .. color)
		defaultSetup()
	end
end

SetupColorScheme(vim.g.ch3rr1_colorscheme)


