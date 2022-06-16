return require("packer").startup(function()
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use("ellisonleao/gruvbox.nvim")

    use("nvim-lua/plenary.nvim")

    use("nvim-telescope/telescope.nvim")

    use("mbbill/undotree")
end)
