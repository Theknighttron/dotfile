-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-file-browser.nvim' }
        }
    }

    use {'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ( 'ellisonleao/gruvbox.nvim' )
    use ( 'theprimeagen/harpoon'	)
    use ( 'mbbill/undotree'	)
    use ( 'tpope/vim-fugitive'	)
    use ( 'nvim-neo-tree/neo-tree.nvim' )
    use ( 'nvim-pack/nvim-spectre' )
    use ( 'nvim-telescope/telescope-fzf-native.nvim' )
    use ( 'onsails/lspkind-nvim' )
    use ( 'folke/flash.nvim' )
    use ( 'folke/which-key.nvim' )
    use ( 'folke/noice.nvim' )
    use ( 'folke/persistence.nvim' )
    use ( 'nvim-lua/plenary.nvim' )
    use ( 'nvim-tree/nvim-web-devicons' )
    use ( 'MunifTanjim/nui.nvim' )
    use ( 'nvimdev/dashboard-nvim' )
    use ( 'lewis6991/gitsigns.nvim' )
    use ( 'folke/trouble.nvim' )
    use ( 'folke/todo-comments.nvim' )
    use ( 'stevearc/conform.nvim' )
    use ( 'stevearc/dressing.nvim' )
    use ( 'windwp/nvim-ts-autotag' )
    use ( 'windwp/nvim-autopairs' )
    use ( 'rcarriga/nvim-notify' )
    use ( 'akinsho/bufferline.nvim' )
    use ( 'nvim-lualine/lualine.nvim' )
    use ( 'glepnir/lspsaga.nvim' )
    use ( 'terrortylor/nvim-comment')
    use ( 'lukas-reineke/indent-blankline.nvim' )
    use {
        'christoomey/vim-tmux-navigator',
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        config = function()
            require('config.vim_tmux_navigator')
        end
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            -- LSP Support
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lua'},
            {'saadparwaiz1/cmp_luasnip'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'garymjr/nvim-snippets'},
            {'echasnovski/mini.pairs'},
            {'echasnovski/mini.ai'},
            {'folke/ts-comments.nvim'},
            {'rafamadriz/friendly-snippets'},


        }
    }

end)
