-- Usiamo il comando 'Lazy' per controllare i plugin
require("lazy").setup({
	{ import = "plugins.telescope" }, -- Barra di ricerca per i file
	{ import = "plugins.treesitter" }, -- Syntax highlighting
	{ import = "plugins.nvim-tree" }, -- File explorer
	{ import = "plugins.lualine" }, -- Barra di stato
	{ import = "plugins.lsp-config" }, -- LSP
	{ import = "plugins.gruvbox" }, -- Tema
	{ import = "plugins.git-stuff" }, -- Comandi git inline e linee di diff
	{ import = "plugins.emmet" }, -- Abbreviazioni Emmet
	{ import = "plugins.copilot" }, -- Copilot
	{ import = "plugins.completions" }, -- Completions
	{ import = "plugins.formatter" }, -- Formatter
})
