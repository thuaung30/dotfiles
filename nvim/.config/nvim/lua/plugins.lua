return {
    -- telescope
    { "nvim-lua/plenary.nvim",            lazy = true },
    { "nvim-telescope/telescope.nvim",    lazy = true,        version = "^0.1.6" },
    { "chriskempson/base16-vim" },
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
    -- LSP Support
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    -- LSP Zero
    { "VonHeikemen/lsp-zero.nvim",        branch = "v3.x" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    { "L3MON4D3/LuaSnip" },
    { "tpope/vim-commentary" },
    { "tpope/vim-fugitive" },
    { "tpope/vim-surround" },
    { "kyazdani42/nvim-web-devicons" },
    { "nvim-lualine/lualine.nvim" },
    { "catppuccin/nvim",                  lazy = false,       name = "catppuccin" },
    { 'rose-pine/neovim',                 name = 'rose-pine', lazy = true }
}
