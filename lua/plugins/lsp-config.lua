return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "ts_ls",
                    "html",
                    "cssls",
                    "jsonls",
                    "pyright",
                    "clangd",
                    "lua_ls",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local lspconfig_ok, lspconfig = pcall(require, 'lspconfig')
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")

            -- Configurazione dei server LSP
            local servers = { "ts_ls", "html", "cssls", "jsonls", "pyright", "clangd", "lua_ls" }
            for _, lsp in ipairs(servers) do
                lspconfig[lsp].setup({
                    capabilities = capabilities,
                })
            end

            -- Rinoomina la variabile
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
            -- Visualizza i suggerimenti, azioni disponibili
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
            -- Vai alla definizione di una variabile
            vim.keymap.set('n', '<gd>', vim.lsp.buf.definition, {})
            -- Vai all'implementazione di una variabile
            vim.keymap.set('n', '<gi>', vim.lsp.buf.implementation, {})
            -- Cerca tutte le occorrenze di una variabile
            vim.keymap.set('n', '<gr>', require('telescope.builtin').lsp_references, {})
            -- Visualizza la documentazione di una variabile come se fosse un hover
            vim.keymap.set('n', '<K>', vim.lsp.buf.hover, {})
        end,
    },
}
