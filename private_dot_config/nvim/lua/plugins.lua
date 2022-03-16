HOME = os.getenv("HOME")

-- Bootstrapping Packer
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	Packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

vim.cmd("packadd packer.nvim")

-- Starting Packer
return require("packer").startup(function(use)
  use({ "wbthomason/packer.nvim", opt = true })
  -- Colorscheme
  use 'Mofiqul/dracula.nvim'
  -- Distraction free writing
  use 'Pocco81/TrueZen.nvim'
  -- Vim wiki
  use 'vimwiki/vimwiki'
  -- Variaty of plugins
  use { 'echasnovski/mini.nvim', branch = 'stable' }
  --Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
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
  if Packer_bootstrap then
		require("packer").sync()
	end
end)
