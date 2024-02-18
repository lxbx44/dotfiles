

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'



    use { "ellisonleao/gruvbox.nvim" }

    use {
        'filipdutescu/renamer.nvim',
        branch = 'master',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

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

    -- markdown
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    -- rust

    use {
        'simrat39/rust-tools.nvim',
        ft = {'rust'},
        config = function()
            require('rust-tools').setup({})
        end
    }
    vim.cmd [[
    autocmd FileType rust,supercollider let b:coc_suggest_disable = v:true
    ]]

    -- crates rust
    use {
        'saecki/crates.nvim',
        tag = 'stable',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    }



    use('lewis6991/gitsigns.nvim')

    use 'romgrk/barbar.nvim'

    use{'ThePrimeagen/vim-be-good'}

    -- live server

    use({
        "aurum77/live-server.nvim",
        run = function()
            require"live_server.util".install()
        end,
        cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
    })

    --dart

    use {'dart-lang/dart-vim-plugin'}
    use {'thosakwe/vim-flutter'}
    use {'natebosch/vim-lsc'}
    use {'natebosch/vim-lsc-dart'}

    use {'elkowar/yuck.vim'}


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
