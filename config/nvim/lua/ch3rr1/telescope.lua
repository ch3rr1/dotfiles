local M = {}

M.nvim_config = function()
    require("telescope.builtin").find_files({
        prompt_title = "<Neovim Config>",
        cwd = "~/.config/nvim"
    })
end

return M
