local ok, telescope = pcall(require, "telescope")

if not ok then
	return
end

--[[ local actions = require("telescope.actions")

telescope.setup({
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        prompt_prefix = " > ",
        color_devicons = true,
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist
            }
        }
    }
}) ]]

telescope.setup()
require("telescope").load_extension("fzf")
