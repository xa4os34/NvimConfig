vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use({ 'lukas-reineke/indent-blankline.nvim' })

  use({ 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} })

  use({ 'sheerun/vim-polyglot' })

  use({ 'jmederosalvarado/roslyn.nvim' })

  use({ 'nvim-treesitter/playground' })

  use({ 'nvim-lua/plenary.nvim' })

  use({ 'ThePrimeagen/harpoon' })

  use({ 'mbbill/undotree' })

  use({ 'lunarmodules/Penlight' })

  use({ 'tpope/vim-fugitive' })

  use({ 'eandrju/cellular-automaton.nvim' })

  use({ 'tpope/vim-markdown' })

  use({ 'joukevandermaas/vim-ember-hbs' })

  use({
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  })
end)
