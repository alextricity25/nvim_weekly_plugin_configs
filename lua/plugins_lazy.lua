return {
    { 'sainnhe/everforest' },
    { "akinsho/toggleterm.nvim" },
    { 'nvim-tree/nvim-tree.lua' },
    -- ufo, for code folding
    {
        'kevinhwang91/nvim-ufo',
        dependencies = { 'kevinhwang91/promise-async' },
    },
    { "lukas-reineke/indent-blankline.nvim", tag = "v2.20.8" },
    { "nvim-treesitter/nvim-treesitter" },
    -- treesj - 08/25/2023
    { 'Wansmer/treesj' },
    { 'numToStr/Comment.nvim' },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    { 'ThePrimeagen/harpoon' },
    {
        'akinsho/bufferline.nvim',
        tag = 'v4.4.0',
    },
    {
        'folke/which-key.nvim',
        tag = 'v1.5.1',
    },
    { 'folke/flash.nvim' },
    --nvim-cmp
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-vsnip' },
    { 'hrsh7th/vim-vsnip' },
    { 'rafamadriz/friendly-snippets' },
    -- vim surround
    { 'tpope/vim-surround' },
    -- gp
    { 'robitx/gp.nvim' },
    -- Make sure the following LSP plugins are in this order.
    {
        'williamboman/mason.nvim',
        lazy = false,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        lazy = false,
    },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    'nvim-pack/nvim-spectre',
    'mbbill/undotree',
    'lewis6991/gitsigns.nvim',
    'nvimdev/lspsaga.nvim',
}
