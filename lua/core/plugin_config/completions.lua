local cmp = require('cmp')
local luasnip = require('luasnip')

-- Carica i frammenti di codice da VSCode
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
   mapping = cmp.mapping.preset.insert({
      -- Ctrl+b per scorrere indietro di 4 righe
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      -- Ctrl+f per scorrere avanti di 4 righe
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      -- Ctrl+o mostra la lista di completamento
      ['<C-o>'] = cmp.mapping.complete(),
      -- Ctrl+e annulla la lista di completamento
      ['<C-e>'] = cmp.mapping.abort(),
      -- Enter per selezionare il completamento
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      -- Alt+n per scorrere verso il basso nella lista dei suggerimenti
      ['<A-n>'] = cmp.mapping.select_next_item(),
      -- Alt+p per scorrere verso l'alto nella lista dei suggerimenti
      ['<A-p>'] = cmp.mapping.select_prev_item(),
   }),
   snippet = {
      expand = function(args)
         luasnip.lsp_expand(args.body) -- Espande il frammento
      end,
   },
   sources = {
      -- Fonti di completamento
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'luasnip' },
   }   
})
