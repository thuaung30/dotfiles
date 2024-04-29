return {
    -- telescope
    { "nvim-lua/plenary.nvim",            lazy = true },
    {
        "nvim-telescope/telescope.nvim",
        lazy = true,
        version = "^0.1.6",
        keys = {
            { "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>" },
            { "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>" },
            { "<leader>;",  "<cmd>lua require('telescope.builtin').buffers()<cr>" },
            { "<C-p>",      "<cmd>lua require('telescope.builtin').git_files()<cr>" }
        }
    },
    { "chriskempson/base16-vim",          lazy = true },
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" },
    -- LSP Support
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    -- LSP Zero
    { "VonHeikemen/lsp-zero.nvim",        branch = "v3.x" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        lazy = true,
        config = function()
            local cmp = require('cmp')

            cmp.setup({
                sources = {
                    { name = "nvim_lsp" },
                },
                mapping = {
                    ['<C-p>'] = cmp.mapping.select_prev_item({ behaviour = "select" }),
                    ['<C-n>'] = cmp.mapping.select_next_item({ behaviour = "select" }),
                    ['<C-y>'] = cmp.mapping.confirm({ select = false }),
                    ['<Tab>'] = nil,
                    ['<S-Tab>'] = nil
                }
            })
        end
    },
    { "L3MON4D3/LuaSnip",             lazy = true },
    { "tpope/vim-commentary",         lazy = true },
    { "tpope/vim-fugitive",           cmd = "G",    lazy = true },
    { "tpope/vim-surround",           lazy = true },
    { "kyazdani42/nvim-web-devicons", lazy = true },
    { "nvim-lualine/lualine.nvim" },
    { "catppuccin/nvim",              lazy = false, name = "catppuccin" },
    { 'rose-pine/neovim',             lazy = true,  name = 'rose-pine' }
}
