HOME = os.getenv("HOME")

local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end
vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

--- startup and add configure plugins
packer.startup({function(use)

  -- Colorscheme
  use 'Mofiqul/dracula.nvim'
  -- Distraction free writing
  use 'Pocco81/TrueZen.nvim'
  -- Vim wiki
  use 'vimwiki/vimwiki'
  -- Variaty of plugins
  use { 'echasnovski/mini.nvim', branch = 'stable' }
  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/nvim-lsp-installer'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    }
}})

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



