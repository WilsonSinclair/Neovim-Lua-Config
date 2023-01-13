-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  'sumneko_lua',
})

lsp.on_attach(function(client, bufnr)

  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
end)

lsp.setup()
