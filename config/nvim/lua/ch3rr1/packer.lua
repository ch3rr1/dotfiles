return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use("ellisonleao/gruvbox.nvim")
    use("folke/tokyonight.nvim")

    use("nvim-lualine/lualine.nvim", {
        requires = {"kyazdani42/nvim-web-devicons", opt = true}
    })

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
    use("nvim-treesitter/playground")

    use("nvim-lua/plenary.nvim")
    use("nvim-telescope/telescope.nvim")

    use("neovim/nvim-lspconfig")
    use("onsails/lspkind-nvim")

    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-nvim-lsp")
    use("saadparwaiz1/cmp_luasnip")

    use("TimUntersberger/neogit", {
        requires = "nvim-lua/plenary.nvim"
    })

    use("numToStr/Comment.nvim")

    use("mbbill/undotree")
end)
