-- only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- packer can manage itself
    use 'wbthomason/packer.nvim'

    use {

        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    --- use({
    --- 'rose-pine/neovim', as = 'rose-pine',
    ---  vim.cmd('colorscheme rose-pine')
    ---  })
    use('nvim-treesitter/nvim-treesitter', { run = ':tsupdate' })
    use('j-hui/fidget.nvim')
    use('theprimeagen/harpoon')
    use('tpope/vim-fugitive')
    use('mbbill/undotree')
    use("elentok/format-on-save.nvim")
    use("lukas-reineke/indent-blankline.nvim")
    use("terrortylor/nvim-comment")
    use {
        'vonheikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- uncomment the two plugins below if you want to manage the language servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'neovim/nvim-lspconfig' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
            { 'hrsh7th/nvim-cmp' },
            { 'L3MON4D3/LuaSnip' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'dcampos/nvim-snippy' },
            { 'dcampos/cmp-snippy' },
            { 'ray-x/lsp_signature.nvim' },     -- For LSP signature help
            { 'hrsh7th/cmp-nvim-lua' },         -- For neovim Lua API completion
            { 'rafamadriz/friendly-snippets' }, -- For snippet completion
            { 'hrsh7th/cmp-path' },             -- For path completion
            { 'hrsh7th/cmp-omni' },             -- For Omni completion
            { 'hrsh7th/cmp-vsnip' },            -- For VSCode snippets
            { 'hrsh7th/cmp-calc' },             -- For Calculator completion
            { 'hrsh7th/cmp-emoji' },            -- For Emoji completion
            ('dcampos/cmp-snippy'),
        }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use { 'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }
end)
