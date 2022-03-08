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
packer.startup(function()
  local use = use

  use "Mofiqul/dracula.nvim"
  use "Pocco81/TrueZen.nvim"
  use "vimwiki/vimwiki"

  end
)

-- Theme
vim.cmd[[colorscheme dracula]]
vim.g.dracula_transparent_bg = true
vim.g.dracula_italic_comment = true

-- Vim Wiki
vim.g.vimwiki_list = {{path = HOME .. '/Google\\ Drive/My\\ Drive/Notes/Wiki/', syntax = 'markdown', ext = '.md'}}
vim.g.vimwiki_ext2syntax = {['.md'] = 'markdown', ['.markdown'] = 'markdown', ['.mdown'] = 'markdown'}
vim.g.vimwiki_folding = 'expr'
vim.g.vimwiki_global_ext = 0
