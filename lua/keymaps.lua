-- Basic settings
vim.o.number = true -- Enable line numbers
vim.o.relativenumber = true -- Enable relative line numbers
vim.o.tabstop = 4 -- Number of spaces a tab represents
vim.o.shiftwidth = 4 -- Number of spaces for each indentation
vim.o.smartindent = true -- Automatically indent new lines
vim.o.wrap = false -- Disable line wrapping
vim.o.cursorline = true -- Highlight the current line
vim.o.termguicolors = true -- Enable 24-bit RGB colors

-- Syntax highlighting and filetype plugins
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

-- Leader key
vim.g.mapleader = " " -- Space as the leader key
-- Spazio+w per scrivere :w
vim.api.nvim_set_keymap("n", "<Leader>w", ":w<CR>", { noremap = true, silent = true })
-- j+k per scrivere esc
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent = true })
-- Spazio+h per pulire la ricerca
vim.api.nvim_set_keymap("n", "<Leader>h", ":nohlsearch<CR>", { noremap = true, silent = true })
-- Spazio+e per aprire il file explorer
vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
-- "+" + y per copiare il contenuto nella clipboard
vim.api.nvim_set_keymap("v", "+y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "+y", '"+y', { noremap = true, silent = true })
-- "+" + p per incollare il contenuto dalla clipboard
vim.api.nvim_set_keymap("v", "+p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "+p", '"+p', { noremap = true, silent = true })
-- Spazio+v+s per dividere verticalmente la finesta
vim.api.nvim_set_keymap("n", "<Leader>vs", ":vsplit<CR>", { noremap = true, silent = true })
-- Spazio+w+w per cambiare finestra
vim.api.nvim_set_keymap("n", "<Leader>ww", "<C-w>w", { noremap = true, silent = true })
-- Spazio+c+a+l+w per sostiture tutte le occorrenze delle parole sotto il cursore
function SubstituteWord()
	local cursor_pos = vim.fn.getcurpos()
	local word = vim.fn.expand("<cword>") -- Ottiene la parola sotto il cursore
	local new_word = vim.fn.input("Replace with: ") -- Chiede all'utente la nuova parola
	vim.cmd(string.format("%%s/\\<%s\\>/%s/g", vim.fn.escape(word, "/"), vim.fn.escape(new_word, "/")))
	vim.fn.setpos(".", cursor_pos) -- Ripristina la posizione
end

vim.api.nvim_set_keymap("n", "<Leader>cal", ":lua SubstituteWord()<CR>", { noremap = true, silent = true })
