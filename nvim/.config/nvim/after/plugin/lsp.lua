local lsp = require("lsp-zero")
local lspconfig = require('lspconfig')

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "rust_analyzer", "tsserver" },
})

lsp.preset("recommended")

-- Fix Undefined global 'vim'
lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        }
    }
})

lspconfig.rust_analyzer.setup({
    settings = {
        ['rust-analyzer'] = {
            diagnostics = {
                enable = true,
            }
        },
    },
})

lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<leader>a", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

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

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})

-- disable lsp log
vim.lsp.set_log_level("off")

-- enable inlay hint if lsp server supports it
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client ~= nil and client.server_capabilities.inlayHintProvider then
            vim.defer_fn(function() vim.lsp.inlay_hint.enable(true) end, 1000)
        end
        -- whatever other lsp config you want
    end
})
