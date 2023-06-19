vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Plugins
	use 'wbthomason/packer.nvim'
	
	-- Color theme
	use { "catppuccin/nvim", as = "catppuccin" }
		
	-- Airline
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	
	-- Formatting help
	use 'windwp/nvim-autopairs'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'vimwiki/vimwiki'
	
	-- Navigation
	use 'nacro90/numb.nvim'
	use 'famiu/bufdelete.nvim'
	use {
		'nvim-tree/nvim-tree.lua',
		requires = 'nvim-tree/nvim-web-devicons'
	}
	use 'ryanoasis/vim-devicons'

	-- Autosuggestions and snippets
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'

	-- LSP	
	use 'neovim/nvim-lspconfig'
	use 'simrat39/rust-tools.nvim'
	use 'HallerPatrick/py_lsp.nvim'

	-- Debugger
	use 'mfussenegger/nvim-dap'
	use 'rcarriga/nvim-dap-ui'
	use 'puremourning/vimspector'

	-- Other QoL plugins
	use {
		'TimUntersberger/neogit',
		requires = 'nvim-lua/plenary.nvim',
	}
	use 'akinsho/toggleterm.nvim'

	use {
  		"startup-nvim/startup.nvim",
  		requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  		config = function()
    			require"startup".setup()
  		end
	}
    use {
        "folke/todo-comments.nvim",
        requires = {"nvim-lua/plenary.nvim"},
        config = {}
    }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- LATEX
    use 'lervag/vimtex'
    use 'ckunte/latex-snippets-vim'

    -- JAVASCRIPT
    use 'yuezk/vim-js'
    use 'HerringtonDarkholme/yats.vim'
    use 'maxmellon/vim-jsx-pretty'
    use 'nvim-lua/completion-nvim'
    use 'nvim-treesitter/highlight.lua' 


    use 'prabirshrestha/vim-lsp'
    use 'Shougo/deoplete.nvim'
    use 'lighttiger2505/deoplete-vim-lsp'
end)

