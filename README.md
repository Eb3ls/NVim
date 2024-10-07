# NVim

# NVim Configuration

Questa cartella contiene la configurazione personalizzata per Neovim. Include vari plugin, impostazioni e mappature delle chiavi per migliorare l'esperienza di editing.

## Struttura della Cartella

La configurazione è organizzata in modo modulare per una migliore manutenibilità. Ecco la struttura principale dei file e delle cartelle:

- `init.lua`: Il file principale di configurazione di Neovim. Qui viene utilizzato `lazy.nvim` per gestire e configurare i plugin, e vengono importati i vari moduli di configurazione.
- `lua/`: Contiene i file di configurazione modulari.

  - `settings.lua`: Impostazioni generali di Neovim (es. comportamento di editing, interfaccia utente).
  - `keymaps.lua`: Mappature personalizzate delle chiavi per Neovim.

  - `plugins/`: Contiene le configurazioni specifiche dei vari plugin.
    - `telescope.lua`: Configurazione per `telescope.nvim`, un fuzzy finder per cercare file, simboli, ecc.
    - `treesitter.lua`: Configurazione per `nvim-treesitter`, che gestisce il syntax highlighting avanzato.
    - `nvim-tree.lua`: Configurazione per il file explorer `nvim-tree.lua`.
    - `lualine.lua`: Configurazione per `lualine.nvim`, una barra di stato personalizzabile.
    - `lsp-config.lua`: Configurazione per `nvim-lspconfig`, che fornisce supporto per vari Language Server Protocol (LSP).
    - `gruvbox.lua`: Configurazione del tema `gruvbox.nvim`.
    - `git-stuff.lua`: Configurazioni per lavorare con Git, utilizzando `gitsigns.nvim` e `vim-fugitive`.
    - `emmet.lua`: Configurazione per `emmet-vim`, per abbreviazioni HTML e CSS.
    - `copilot.lua`: Configurazione per GitHub Copilot.
    - `completions.lua`: Configurazione per il completamento automatico del codice.

## Installazione

1. **Clona questa repository** nella tua cartella di configurazione di Neovim:

   ```sh
   git clone <repository-url> ~/.config/nvim
   ```

   NB: Su linux conviene installare xclip per poter utilizzare il copia e incolla con il comando `+` e `*`

## Lista dei comandi

    j + k = esci dalla modalità di inserimento
    "+" + y = copia il testo selezionato nella clipboard
    "+" + p = incolla il testo dalla clipboard
    Spazio + w = salva il file
    Spazio + h = pulisci la ricerca
    Spazio + e = apri/chiudi il file explorer
    Ctrl + y + , = enter per emmet
    Spazio + g + p = mostra differenze con il commit precedente
    Spazio + p + f = apri la ricerca file
    Spazio + o + f = apri i file recenti
    Spazio + f + g = apri la ricerca per il progetto

## Attenzione

Per utilizzare il Copilot utilizzare il comando Copilot setup
