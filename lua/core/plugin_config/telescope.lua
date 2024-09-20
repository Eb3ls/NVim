local builtin = require('telescope.builtin')

-- Ricerca dei file - project files
vim.keymap.set('n', '<Space>pf', builtin.find_files, {})
-- Lista dei file aperti - old files
vim.keymap.set('n', '<Space>of', builtin.oldfiles, {})
-- Ricerca in tuti i file del progetto - file grep
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
-- Non ho troppo capito cosa faccia
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})