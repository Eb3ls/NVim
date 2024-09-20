require 'nvim-treesitter.configs'.setup {
  ensure_installed = {"python", "javascript", "typescript", "html", "css", "json", "c", "cpp", "java", "bash", "lua"},

  -- Installati in modo asincrono
  sync_install = false,
  -- Disabilita l'installazione automatica dei parser per i linguaggi quando apro un file
  auto_install = false,
  highlight = {
    enable = true,
  },
  -- Indentazione automatica migliore
  indent = {
    enable = true,
  },
}