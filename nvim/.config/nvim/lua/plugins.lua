return {
    -- telescope
    {
        "nvim-lua/plenary.nvim",
        lazy = true
    },
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
    -- telescope
    {
        "chriskempson/base16-vim",
        lazy = true
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = true,
        config = function()
            require 'nvim-treesitter.configs'.setup {
                -- A list of parser names, or "all" (the four listed parsers should always be installed)
                ensure_installed = { "javascript", "typescript", "c", "lua", "rust", "vim" },
                ignore_install = {},
                modules = {},
                -- Install parsers synchronously (only applied to `ensure_installed`)
                sync_install = false,
                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                auto_install = true,
                ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
                -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
                highlight = {
                    -- `false` will disable the whole extension
                    enable = true,
                    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                    -- Using this option may slow down your editor, and you may see some duplicate highlights.
                    -- Instead of true it can also be a list of languages
                    additional_vim_regex_highlighting = false,
                },
            }
        end
    },
    -- LSP Support
    {
        "williamboman/mason.nvim",
        lazy = true
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = true
    },
    -- LSP Zero
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x"
    },
    { "neovim/nvim-lspconfig" },
    -- mini.nvim, qol plugin
    {
        "echasnovski/mini.nvim",
        version = false,
        config = function()
            -- text editing
            require("mini.comment").setup()
            require("mini.surround").setup()
            require("mini.pairs").setup()
            require("mini.completion").setup()
            require("mini.snippets").setup()
            require("mini.splitjoin").setup()
            -- text editing
            -- general workflow
            require("mini.bracketed").setup()
            require("mini.git").setup()
            require("mini.diff").setup()
            -- general workflow
            -- appearance
            require("mini.icons").setup()
            require("mini.statusline").setup()
            -- appearance
        end
    },
    -- mini.nvim, qol plugin
    -- snacks.nvim qol plugin
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            bigfile = { enabled = true },
            dashboard = { enabled = true },
            indent = { enabled = true },
            input = { enabled = true },
            picker = { enabled = true },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            scope = { enabled = true },
            scroll = { enabled = true },
            statuscolumn = { enabled = true },
            words = { enabled = true },
        },
    },
    -- snacks.nvim qol plugin
    {
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin"
    },
    {
        'rose-pine/neovim',
        lazy = true,
        name = 'rose-pine'
    },
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("cyberdream").setup({
                transparent = true,
                italic_comments = true,
                hide_fillchars = true,
                terminal_colors = true,
                cache = true,
                borderless_telescope = true
            })
        end,
    }
}
