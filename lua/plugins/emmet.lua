return {
	{
		"mattn/emmet-vim",
		config = function()
			-- Per Emmet é necessario premere "Ctrl+y+," per attivarlo

			-- Abilita emmet per i file HTML, CSS, JavaScript, TypeScript
			vim.api.nvim_exec(
				[[
        autocmd FileType html,css,javascript,typescript EmmetInstall
      ]],
				false
			)
		end,
	},
}
