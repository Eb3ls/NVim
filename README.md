# NVim

# NVim Configuration

Questa cartella contiene la configurazione personalizzata per Neovim. Include vari plugin, impostazioni e mappature delle chiavi per migliorare l'esperienza di editing.

## Struttura della Cartella

- `init.lua`: Il file principale di configurazione di Neovim.
- `lua/`: Contiene i file di configurazione modulari.
  - `core/`: Configurazioni di base e plugin manager.
    - `plugins.lua`: Configurazione di `packer.nvim` per la gestione dei plugin.
    - `settings.lua`: Impostazioni generali di Neovim.
    - `keymaps.lua`: Mappature delle chiavi personalizzate.
    - `plugin_config/`: Configurazioni specifiche per ciascun plugin.

## Installazione

1. **Clona questa repository** nella tua cartella di configurazione di Neovim:

   ```sh
   git clone <repository-url> ~/.config/nvim
   ```

## Attenzione

Per utilizzare il Copilot utilizzare il comando Copilot setup
