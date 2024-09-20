-- Dopo questo dentro nvim usare :Mason per vedere i server attivi
-- Facilita la gestione dei server LSP
require("mason").setup()

-- Integra Mason con lspconfig
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

-- Utilizzata quando il server si attacca al buffer di un file
local on_attach = function(_, _)
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
end

-- Importa lspconfig
local lspconfig = require("lspconfig")

-- Configurazione dei server LSP
-- Configura ciascun server LSP specifico
lspconfig.ts_ls.setup({
    on_attach = on_attach,
})
lspconfig.html.setup({
    on_attach = on_attach,
})
lspconfig.cssls.setup({
    on_attach = on_attach,
})
lspconfig.jsonls.setup({
    on_attach = on_attach,
})
lspconfig.pyright.setup({
    on_attach = on_attach,
})
lspconfig.clangd.setup({
    on_attach = on_attach,
})
lspconfig.lua_ls.setup({
    on_attach = on_attach,
})
