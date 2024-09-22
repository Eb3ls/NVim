-- Installato un nerd font ed inserito in ~/.local/share/fonts/
-- Necessario per visualizzare le icone
return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            -- Ctrl+n apre o chiude il pannello
            vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
            vim.keymap.set("n", "<leader>bf", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })

            -- Configurazione di nvim-tree
            require("nvim-tree").setup {}
        end,
    },
}
