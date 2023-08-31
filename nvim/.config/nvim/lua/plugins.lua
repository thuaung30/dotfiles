return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.1",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use "chriskempson/base16-vim" use ("nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'})

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
    use "tpope/vim-commentary"
    use "tpope/vim-fugitive"
    use "tpope/vim-surround"

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = false }
    }

    use { "catppuccin/nvim", as = "catppuccin" }
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({})
        end,
    }
end)
