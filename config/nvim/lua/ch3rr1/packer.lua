return require("packer").startup(function()
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use("nvim-lua/plenary.nvim")

    use("mbbill/undotree")
end)
