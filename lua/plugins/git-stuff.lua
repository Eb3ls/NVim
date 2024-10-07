return {
	{
		"tpope/vim-fugitive",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "┃" }, -- Simbolo per le aggiunte
					change = { text = "┃" }, -- Simbolo per le modifiche
					delete = { text = "-" }, -- Simbolo per le cancellazioni
					topdelete = { text = "‾" }, -- Simbolo per la cancellazione della parte superiore
					changedelete = { text = "~" }, -- Simbolo per modifica/cancellazione
					untracked = { text = "┆" }, -- Simbolo per file non tracciati
				},
				-- Altre opzioni personalizzate di gitsigns (come la blame line, il debounce, ecc.)
				signcolumn = true, -- Attivato per mostrare i simboli nella colonna laterale
				current_line_blame = true,
				current_line_blame_opts = {
					virt_text = true,
					virt_text_pos = "eol",
					delay = 1000,
					ignore_whitespace = false,
				},
			})

			-- Mostra le modifiche in una finestrina
			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>", {})
		end,
	},
}
