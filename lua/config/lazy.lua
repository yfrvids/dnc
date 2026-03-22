local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local plugins = {
    -- general
    { 'Pocco81/auto-save.nvim' },
    { 'windwp/nvim-autopairs' },
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
    },

    -- apariencia
    { 'wuelnerdotexe/vim-enfocado'},
    { 'tiagovla/tokyodark.nvim'},
    { 'sontungexpt/sttusline'},

    -- plugins
    { 'akinsho/toggleterm.nvim' },
    { 'nvim-tree/nvim-tree.lua',
        dependencies = { {'nvim-tree/nvim-web-devicons'} }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate'
    },
    { 'petertriho/nvim-scrollbar'},
    { 'lewis6991/gitsigns.nvim'},
    { 'dgagn/diagflow.nvim' },
    { 'lewis6991/satellite.nvim'},
    { 'folke/trouble.nvim' },
    -- { 'jose-elias-alvarez/null-ls.nvim',
    { 'nvimtools/none-ls.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'github/copilot.vim' },
    {
        'toppair/peek.nvim',
        event = { 'VeryLazy' },
        build = 'deno task --quiet build:fast',
        config = function()
            require('peek').setup()
            vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
            vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
        end,
    },
    {
        "seblyng/roslyn.nvim",
        ---@module 'roslyn.config'
        ---@type RoslynNvimConfig
        opts = {
            -- opciones
        },
    },

    -- lg/lsp
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },

    { 'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    },
    { 'nvimdev/lspsaga.nvim' }
}

require("lazy").setup(plugins, {})
