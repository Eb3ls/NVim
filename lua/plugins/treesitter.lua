return {
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate", -- Aggiorna i parser
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"python",
					"javascript",
					"typescript",
					"html",
					"css",
					"json",
					"c",
					"cpp",
					"java",
					"bash",
					"lua",
				},
				sync_install = false, -- Installazione asincrona
				auto_install = false, -- Disabilita installazione automatica dei parser
				highlight = {
					enable = true, -- Abilita evidenziazione
				},
				indent = {
					enable = true, -- Abilita indentazione
				},
			})
		end,
	},
}
