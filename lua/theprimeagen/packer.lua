-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- Packer can manage itself
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'onsails/lspkind.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'deoplete-plugins/deoplete-clang'
    -- Using Packer:
    use "rose-pine/neovim"
    use {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "luckasRanarison/tailwind-tools.nvim",
            "onsails/lspkind-nvim",
            -- ...
        }}
    use {
        "luckasRanarison/tailwind-tools.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        opts = {} -- your configuration
    }
    use 'kyazdani42/nvim-web-devicons'
    use('neovim/nvim-lspconfig')
    use('jose-elias-alvarez/null-ls.nvim')
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')
    use 'windwp/nvim-ts-autotag'
    use 'norcalli/nvim-colorizer.lua'
    use 'windwp/nvim-autopairs'

    use ({
        'nvimdev/lspsaga.nvim',
        after = 'nvim-lspconfig',
        config = function()
            require('lspsaga').setup({})
        end,
    })
    use  'MunifTanjim/nui.nvim'
    use {
        'nvim-lualine/lualine.nvim',

        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'liaozixin/nvim-cpptools'
    use 'lervag/vimtex'
    -- lazy.nvim

    use 'wbthomason/packer.nvim'

    use "nvim-lua/plenary.nvim"

    use "github/copilot.vim"


    use({
        "leosmaia21/gcompilecommands.nvim",
        opts = {
            tmp_file_path = "$HOME/tmp/compilecommandsNEOVIM.json"
        },
        ft = { "c", "cpp" }, -- lazy load plugin only on C and C++ filetypes
    })
    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('nvim-treesitter/playground')
    use ('ThePrimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')
    use('prabirshrestha/vim-lsp')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },    -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

    use('Shougo/deoplete.nvim')
    use('lighttiger2505/deoplete-vim-lsp')


end)
