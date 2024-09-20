vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

-- Ctrl+n apre o chiude il pannello
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
-- Installato un nerd font ed inserito in ~/.local/share/fonts/
-- Necessario per visualizzare le icone