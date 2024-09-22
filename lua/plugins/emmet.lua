return {
  {
    "mattn/emmet-vim",
    config = function()
      vim.g.user_emmet_leader_key = '<CR>' -- Imposta Ctrl+Z come leader key per Emmet

      -- Abilita emmet per i file HTML, CSS, JavaScript, TypeScript
      vim.api.nvim_exec([[
        autocmd FileType html,css,javascript,typescript EmmetInstall
      ]], false)
    end,
  },
}