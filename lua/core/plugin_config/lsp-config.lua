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
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Configurazione dei server LSP
local servers = { "ts_ls", "html", "cssls", "jsonls", "pyright", "clangd", "lua_ls" }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
        on_attach = on_attach,
        capabilities = capabilities,
    })
end
