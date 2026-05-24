vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 2,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Mappings.
    local opts = { buffer = ev.buf, silent = true }
    
    -- Jump to the definition of the symbol under the cursor
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

    -- Displays hover information about the symbol under the cursor
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

    -- Lists all the implementations for the symbol under the cursor
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)

    -- Displays signature information about the symbol under the cursor
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)

    -- Jumps to the definition of the type of the symbol
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)

    -- Renames all references to the symbol under the cursor
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)

    -- Selects a code action available at the current cursor position
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)

    -- Lists all the references to the symbol under the cursor
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

    -- Formats the current buffer
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)

    -- Diagnostic navigation
    vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1, float = true }) end, opts)
    vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1, float = true }) end, opts)
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
  end,
})


