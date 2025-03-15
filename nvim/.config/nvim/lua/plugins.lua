return {
    {
        "chriskempson/base16-vim",
        lazy = true
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
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
            gitbrowse = { enabled = true },
            lazygit = { enabled = true },
            picker = {
                enabled = true,
                -- show hidden files like .env
                hidden = true,
                -- show ignored files like .git and node_modules
                ignored = true
            },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            statuscolumn = { enabled = true },
            words = { enabled = true },
        },
        keys = {
            -- Top Pickers & Explorer
            { "<leader>,",   function() Snacks.picker.buffers() end,                                 desc = "Buffers" },
            { "<leader>/",   function() Snacks.picker.grep() end,                                    desc = "Grep" },
            { "<leader>:",   function() Snacks.picker.command_history() end,                         desc = "Command History" },
            { "<leader>n",   function() Snacks.picker.notifications() end,                           desc = "Notification History" },
            { "<leader>e",   function() Snacks.explorer() end,                                       desc = "File Explorer" },
            -- find
            { "<leader>fb",  function() Snacks.picker.buffers() end,                                 desc = "Buffers" },
            { "<leader>fc",  function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
            { "<leader>ff",  function() Snacks.picker.files() end,                                   desc = "Find Files" },
            { "<leader>fg",  function() Snacks.picker.git_files() end,                               desc = "Find Git Files" },
            { "<leader>fp",  function() Snacks.picker.projects() end,                                desc = "Projects" },
            { "<leader>fr",  function() Snacks.picker.recent() end,                                  desc = "Recent" },
            -- git
            { "<leader>gb",  function() Snacks.picker.git_branches() end,                            desc = "Git Branches" },
            { "<leader>gl",  function() Snacks.picker.git_log() end,                                 desc = "Git Log" },
            { "<leader>gL",  function() Snacks.picker.git_log_line() end,                            desc = "Git Log Line" },
            { "<leader>gs",  function() Snacks.picker.git_status() end,                              desc = "Git Status" },
            { "<leader>gS",  function() Snacks.picker.git_stash() end,                               desc = "Git Stash" },
            { "<leader>gd",  function() Snacks.picker.git_diff() end,                                desc = "Git Diff (Hunks)" },
            { "<leader>gf",  function() Snacks.picker.git_log_file() end,                            desc = "Git Log File" },
            -- Grep
            { "<leader>sb",  function() Snacks.picker.lines() end,                                   desc = "Buffer Lines" },
            { "<leader>sB",  function() Snacks.picker.grep_buffers() end,                            desc = "Grep Open Buffers" },
            { "<leader>sg",  function() Snacks.picker.grep() end,                                    desc = "Grep" },
            { "<leader>sw",  function() Snacks.picker.grep_word() end,                               desc = "Visual selection or word", mode = { "n", "x" } },
            -- search
            { '<leader>s"',  function() Snacks.picker.registers() end,                               desc = "Registers" },
            { '<leader>s/',  function() Snacks.picker.search_history() end,                          desc = "Search History" },
            { "<leader>sa",  function() Snacks.picker.autocmds() end,                                desc = "Autocmds" },
            { "<leader>sb",  function() Snacks.picker.lines() end,                                   desc = "Buffer Lines" },
            { "<leader>sc",  function() Snacks.picker.command_history() end,                         desc = "Command History" },
            { "<leader>sC",  function() Snacks.picker.commands() end,                                desc = "Commands" },
            { "<leader>sd",  function() Snacks.picker.diagnostics() end,                             desc = "Diagnostics" },
            { "<leader>sD",  function() Snacks.picker.diagnostics_buffer() end,                      desc = "Buffer Diagnostics" },
            { "<leader>sh",  function() Snacks.picker.help() end,                                    desc = "Help Pages" },
            { "<leader>sH",  function() Snacks.picker.highlights() end,                              desc = "Highlights" },
            { "<leader>si",  function() Snacks.picker.icons() end,                                   desc = "Icons" },
            { "<leader>sj",  function() Snacks.picker.jumps() end,                                   desc = "Jumps" },
            { "<leader>sk",  function() Snacks.picker.keymaps() end,                                 desc = "Keymaps" },
            { "<leader>sl",  function() Snacks.picker.loclist() end,                                 desc = "Location List" },
            { "<leader>sm",  function() Snacks.picker.marks() end,                                   desc = "Marks" },
            { "<leader>sM",  function() Snacks.picker.man() end,                                     desc = "Man Pages" },
            { "<leader>sp",  function() Snacks.picker.lazy() end,                                    desc = "Search for Plugin Spec" },
            { "<leader>sq",  function() Snacks.picker.qflist() end,                                  desc = "Quickfix List" },
            { "<leader>sR",  function() Snacks.picker.resume() end,                                  desc = "Resume" },
            { "<leader>su",  function() Snacks.picker.undo() end,                                    desc = "Undo History" },
            { "<leader>uC",  function() Snacks.picker.colorschemes() end,                            desc = "Colorschemes" },
            -- LSP
            { "gd",          function() Snacks.picker.lsp_definitions() end,                         desc = "Goto Definition" },
            { "gD",          function() Snacks.picker.lsp_declarations() end,                        desc = "Goto Declaration" },
            { "gr",          function() Snacks.picker.lsp_references() end,                          nowait = true,                     desc = "References" },
            { "gI",          function() Snacks.picker.lsp_implementations() end,                     desc = "Goto Implementation" },
            { "gy",          function() Snacks.picker.lsp_type_definitions() end,                    desc = "Goto T[y]pe Definition" },
            { "<leader>ss",  function() Snacks.picker.lsp_symbols() end,                             desc = "LSP Symbols" },
            { "<leader>sS",  function() Snacks.picker.lsp_workspace_symbols() end,                   desc = "LSP Workspace Symbols" },
            -- LazyGit
            { "<leader>lg",  function() Snacks.lazygit.open() end,                                   desc = "Open LazyGit" },
            -- Gitbrowse
            { "<leader>gib", function() Snacks.gitbrowse.open() end,                                 desc = "Gitbrowse" },
        },
    },
    -- snacks.nvim qol plugin
    -- themes
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
        lazy = true
    },
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {}
    },
    {
        'projekt0n/github-nvim-theme',
        name = 'github-theme',
        lazy = false
    }
    -- themes
}
