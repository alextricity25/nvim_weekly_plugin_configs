---@diagnostic disable: undefined-global
return require('packer').startup(function()
    -- Packer can manage itself as an optional plugin
    use { 'wbthomason/packer.nvim', opt = true }

    -- Color scheme
    use { 'sainnhe/everforest' }

    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup({
            close_on_exit = false,
            autochdir = true,
            shell = vim.o.shell,
            size = 20
        })
    end }
    use { 'nvim-tree/nvim-tree.lua' }

    -- neogit
    use { 'treatybreaker/neogit', requires = 'nvim-lua/plenary.nvim', config = function()
        require('neogit').setup()
    end
}

    -- diffview
    use { "sindrets/diffview.nvim",
        config = function()
            require('diffview').setup()
        end
    }

    -- New plugins as of 08/04/2023
    -- nvim.coc
    use { 'neoclide/coc.nvim', branch = 'release' }

    -- ufo, for code folding
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

    -- Indent blankline
    use {"lukas-reineke/indent-blankline.nvim"}

end)
