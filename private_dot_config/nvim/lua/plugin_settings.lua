
-- Theme
vim.cmd[[colorscheme dracula]]
vim.g.dracula_transparent_bg = true
vim.g.dracula_italic_comment = true

-- Vim Wiki
vim.g.vimwiki_list = {{path = HOME .. '/Google\\ Drive/My\\ Drive/Notes/Wiki/', syntax = 'markdown', ext = '.md'}}
vim.g.vimwiki_ext2syntax = {['.md'] = 'markdown', ['.markdown'] = 'markdown', ['.mdown'] = 'markdown'}
vim.g.vimwiki_folding = 'expr'
vim.g.vimwiki_global_ext = 0

-- Mini plugins
require('mini.surround').setup()

-- LSP
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()
