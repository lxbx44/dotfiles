-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	'catppuccin/nvim',
	as = 'catppuccin',
	config = function()
		vim.cmd('colorscheme catppuccin-mocha')
	end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')



  use('vim-airline/vim-airline')
  use('vim-airline/vim-airline-themes')

  use('nacro90/numb.nvim')
  
  use('famiu/bufdelete.nvim')

  use({ 'NeogitOrg/neogit', requires = 'nvim-lua/plenary.nvim' })

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
      vim.keymap.set('n', '<C-y>', '<C-\\><C-n> :ToggleTerm<CR>')
  end}


  use {
      "startup-nvim/startup.nvim",
      requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
      config = function()
          require"startup".setup()
      end
  }
  
  use('nvim-tree/nvim-web-devicons') 
  use('nvim-tree/nvim-tree.lua')

  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  
  use('lewis6991/gitsigns.nvim')

  use 'romgrk/barbar.nvim'

  use{'ThePrimeagen/vim-be-good'}


--dart

use {'dart-lang/dart-vim-plugin'}
use {'thosakwe/vim-flutter'}
use {'natebosch/vim-lsc'}
use {'natebosch/vim-lsc-dart'}

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
              pcall(vim.cmd, 'MasonUpdate')
          end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
  }
}
end)
