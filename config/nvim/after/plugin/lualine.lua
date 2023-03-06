local ok, lualine = pcall(require, "lualine")

if not ok then
	return
end
lualine.setup({
    options = {
        icons_enabled = false,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" }
    },
	sections = {
		lualine_c = {
			{
				'filename',
				path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
			}
		}
	}
})
