return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use("ellisonleao/gruvbox.nvim")
    use("folke/tokyonight.nvim")
    use("navarasu/onedark.nvim")
    use("rebelot/kanagawa.nvim")
	use("shaunsingh/nord.nvim")
    use { "catppuccin/nvim", as = "catppuccin" }
	use({
		"rose-pine/neovim",
		as = "rose-pine"
	})

    -- use("nvim-lualine/lualine.nvim", {
    --     requires = {"kyazdani42/nvim-web-devicons", opt = true}
    -- })

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
    use("nvim-treesitter/playground")
    use("nvim-treesitter/nvim-treesitter-context")

    use("nvim-lua/plenary.nvim")
    use("nvim-telescope/telescope.nvim")

	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "make"
	})

    use("neovim/nvim-lspconfig")
    use("onsails/lspkind-nvim")

    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-nvim-lsp")
    use("saadparwaiz1/cmp_luasnip")
	use("L3MON4D3/LuaSnip")

    -- use("TimUntersberger/neogit", {
    --     requires = "nvim-lua/plenary.nvim"
    -- })
	
	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup {
				icons = false
			}
		end
	})

	use("tpope/vim-fugitive");

	use("f-person/git-blame.nvim");

    use("numToStr/Comment.nvim")

    use("mbbill/undotree")

	use("github/copilot.vim")
end)
